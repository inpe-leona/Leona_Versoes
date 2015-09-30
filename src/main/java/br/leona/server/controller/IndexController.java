package br.leona.server.controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.leona.server.model.Estacao;
import br.leona.server.model.Observacao;
import br.leona.server.model.Usuario;
import java.util.List;


@Resource
public class IndexController {
    
    private Result result;
    
    public IndexController(Result r){
        this.result = r;
    }
    
    @Path("/")
    public void index(){}
    
    //index
    @Path("/login")
    public void login(Usuario usuario, String r){
        result.forwardTo(CaminhoPaginas.LOGIN);
    }
    
    //usuario
    @Path("/cadastroUsuario")
    public void cadastroUsuario(Usuario usuario, String r){        
        result
                .include("resposta", r)
                .forwardTo(CaminhoPaginas.CADASTRO_USUARIO);
    }

    public void paginaCadastroUsuarioSucesso() {
        result.forwardTo(CaminhoPaginas.CADASTRO_USUARIO_OK);
    }

    public void menuPrincipal(Usuario u) {        
        result 
                .include("usuario", u)
                .forwardTo(CaminhoPaginas.MENU_PRINCIPAL);                
    }
    void paginaMensagemOkObservacao() {
        result.forwardTo(CaminhoPaginas.CADASTRO_OBSERVACAO_OK);
    }
    @Path("/cadastroObservacao")
    public void paginaCadastroObservacao(){
        result.forwardTo(CaminhoPaginas.CADASTRO_OBSERVACAO);
    }
    @Path("/visualizacaoObservacao")
    void paginaVisualizacaoObservacao(Observacao o) {
        
        result
                .include("observation", o)
                .forwardTo(CaminhoPaginas.VISUALIZAR_OBSERVACAO);
    }
    @Path("/listagemEstacao")
    public void paginaListagemEstacao(){
        EstacaoController e = new EstacaoController(result);
        List<Estacao> listE = e.listaEstacoes(); 
        result
                .include("estacaoList", listE)
                .forwardTo(CaminhoPaginas.LISTAGEM_ESTACAO);
    }  
    @Path("/cadastroEstacao")
    public void paginaCadastroEstacao(){
        result.forwardTo(CaminhoPaginas.CADASTRO_ESTACAO);
    }
     void paginaImagens(List<String> caminho) {
        result
                .forwardTo(CaminhoPaginas.IMAGENSOBS);
    }
}
