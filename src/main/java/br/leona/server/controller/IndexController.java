package br.leona.server.controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;


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
    public void login(){
        result.forwardTo(CaminhoPaginas.LOGIN);
    }
    
    //usuario
    @Path("/cadastroUsuario")
    public void cadastroUsuario(){        
        result.forwardTo(CaminhoPaginas.CADASTRO_USUARIO);
    }

    public void paginaCadastroUsuarioSucesso() {
        result.forwardTo(CaminhoPaginas.CADASTRO_USUARIO_OK);
    }

    public void menuPrincipal() {        
        result.forwardTo(CaminhoPaginas.MENU_PRINCIPAL);                
    }
}
