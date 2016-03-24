package br.com.caelum.produtos.controller;

import java.util.List;

import br.com.caelum.produtos.dao.ProdutoDao;
import br.com.caelum.produtos.modelo.Produto;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;

@Resource
public class ProdutoController {
	private Result result;
	
	public ProdutoController(Result result){
		this.result = result;
	}
	
	public List<Produto> lista() {
		return new ProdutoDao().lista();
	}
	/**
	 * Adiciona um produto com redirecionamento para lista de produtos
	 * @param produto
	 */
	public void adiciona(Produto produto){
		new ProdutoDao().adiciona(produto);
		result.redirectTo(ProdutoController.class).lista();
	}
	/**
	 * Remove o produto e redireciona para lista de produtos
	 * @param produto
	 */
	public void remove(Produto produto){
		new ProdutoDao().remove(produto);
		result.use(Results.logic()).redirectTo(ProdutoController.class).lista();
	}
	
	public void altera(Produto produto){
		new ProdutoDao().atualiza(produto);
		result.use(Results.logic()).redirectTo(ProdutoController.class).lista();
	}
	public void formulario() {
	}
}
