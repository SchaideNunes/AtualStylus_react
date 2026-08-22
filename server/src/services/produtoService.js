export class ProdutoService {
  constructor(db) {
    this.db = db;
  }

  calcularPrecoPromocional(preco, porcentagemDesconto, emPromocao) {
    const p = Number(preco) || 0;
    const desc = Math.max(0, Math.min(100, Number(porcentagemDesconto) || 0));
    if (!emPromocao || desc <= 0) {
      return {
        precoPromocional: null,
        porcentagemDesconto: 0
      };
    }
    const precoPromocional = Number((p * (1 - desc / 100)).toFixed(2));
    return {
      precoPromocional,
      porcentagemDesconto: desc
    };
  }

  async listarPublicos() {
    return await this.db.getProdutosPublicos();
  }

  async listarAdmin(filtros = {}) {
    return await this.db.listProdutosAdmin(filtros);
  }

  async criarProduto(dados) {
    const {
      nome,
      descricao = '',
      preco = 0,
      em_promocao = false,
      porcentagem_desconto = 0,
      preco_promocional = null,
      foto = '',
      categoria = 'Geral',
      ativo = true
    } = dados;

    if (!nome || String(nome).trim() === '') {
      throw new Error('O nome do produto é obrigatório');
    }

    const precoBase = Number(preco) || 0;
    if (precoBase < 0) {
      throw new Error('O preço não pode ser negativo');
    }

    const isPromocao = Boolean(em_promocao);
    const { precoPromocional, porcentagemDesconto } = this.calcularPrecoPromocional(
      precoBase,
      porcentagem_desconto,
      isPromocao
    );

    return await this.db.insertProduto({
      nome: String(nome).trim(),
      descricao: String(descricao || '').trim(),
      preco: precoBase,
      preco_promocional: precoPromocional !== null ? precoPromocional : (preco_promocional ? Number(preco_promocional) : null),
      porcentagem_desconto: porcentagemDesconto,
      em_promocao: isPromocao,
      foto: String(foto || '').trim(),
      categoria: String(categoria || 'Geral').trim(),
      ativo: ativo !== undefined ? Boolean(ativo) : true
    });
  }

  async atualizarProduto(id, dados) {
    const produtoAtual = await this.db.getProdutoById(id);
    if (!produtoAtual) {
      throw new Error('Produto não encontrado');
    }

    const nome = dados.nome !== undefined ? String(dados.nome).trim() : produtoAtual.nome;
    if (!nome) {
      throw new Error('O nome do produto é obrigatório');
    }

    const precoBase = dados.preco !== undefined ? Number(dados.preco) : Number(produtoAtual.preco);
    const isPromocao = dados.em_promocao !== undefined ? Boolean(dados.em_promocao) : Boolean(produtoAtual.em_promocao);
    const pct = dados.porcentagem_desconto !== undefined ? Number(dados.porcentagem_desconto) : Number(produtoAtual.porcentagem_desconto);

    const { precoPromocional, porcentagemDesconto } = this.calcularPrecoPromocional(
      precoBase,
      pct,
      isPromocao
    );

    const payload = {
      nome,
      descricao: dados.descricao !== undefined ? String(dados.descricao).trim() : produtoAtual.descricao,
      preco: precoBase,
      preco_promocional: precoPromocional !== null ? precoPromocional : (dados.preco_promocional ? Number(dados.preco_promocional) : null),
      porcentagem_desconto: porcentagemDesconto,
      em_promocao: isPromocao,
      foto: dados.foto !== undefined ? String(dados.foto).trim() : produtoAtual.foto,
      categoria: dados.categoria !== undefined ? String(dados.categoria).trim() : produtoAtual.categoria,
      ativo: dados.ativo !== undefined ? Boolean(dados.ativo) : Boolean(produtoAtual.ativo)
    };

    return await this.db.updateProduto(id, payload);
  }

  async deletarProduto(id) {
    const produto = await this.db.getProdutoById(id);
    if (!produto) {
      throw new Error('Produto não encontrado');
    }
    return await this.db.deleteProduto(id);
  }
}
