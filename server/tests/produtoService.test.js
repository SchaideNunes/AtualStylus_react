import { describe, it, expect, beforeEach } from 'vitest';
import { ProdutoService } from '../src/services/produtoService.js';
import { InMemoryDatabase } from '../src/db/inMemoryDb.js';

describe('Produto Service & Showcase Management (TDD)', () => {
  let db;
  let produtoService;

  beforeEach(() => {
    db = new InMemoryDatabase();
    produtoService = new ProdutoService(db);
  });

  it('deve listar apenas produtos ativos para a vitrine pública', async () => {
    const produtos = await produtoService.listarPublicos();
    expect(produtos).toBeInstanceOf(Array);
    expect(produtos.length).toBeGreaterThan(0);
    produtos.forEach(p => {
      expect(Boolean(p.ativo)).toBe(true);
    });
  });

  it('deve calcular o preço promocional automaticamente ao informar a porcentagem de desconto', async () => {
    const novoProduto = await produtoService.criarProduto({
      nome: 'Pomada Brilho Efeito Molhado',
      descricao: 'Fixação forte com acabamento brilhante.',
      preco: 50.00,
      em_promocao: true,
      porcentagem_desconto: 20, // 20% de 50.00 = 40.00
      foto: '/assets/degrade.webp',
      categoria: 'Cabelo & Penteado'
    });

    expect(novoProduto.id).toBeDefined();
    expect(Number(novoProduto.preco)).toBe(50.00);
    expect(Number(novoProduto.preco_promocional)).toBe(40.00);
    expect(novoProduto.porcentagem_desconto).toBe(20);
    expect(Boolean(novoProduto.em_promocao)).toBe(true);
  });

  it('deve atualizar preço, promoção e recalcular desconto ao editar produto', async () => {
    const produtoCriado = await produtoService.criarProduto({
      nome: 'Óleo de Barba Especial',
      descricao: 'Teste',
      preco: 100.00,
      em_promocao: false,
      foto: '/assets/Logo.webp'
    });

    const atualizado = await produtoService.atualizarProduto(produtoCriado.id, {
      ...produtoCriado,
      preco: 80.00,
      em_promocao: true,
      porcentagem_desconto: 50 // 50% de 80.00 = 40.00
    });

    expect(Number(atualizado.preco)).toBe(80.00);
    expect(Number(atualizado.preco_promocional)).toBe(40.00);
    expect(atualizado.porcentagem_desconto).toBe(50);
    expect(Boolean(atualizado.em_promocao)).toBe(true);
  });

  it('deve excluir produto pelo ID', async () => {
    const produto = await produtoService.criarProduto({
      nome: 'Produto para Deletar',
      preco: 10.00
    });

    const excluido = await produtoService.deletarProduto(produto.id);
    expect(excluido).toBeDefined();

    const adminLista = await produtoService.listarAdmin();
    expect(adminLista.find(p => p.id === produto.id)).toBeUndefined();
  });
});
