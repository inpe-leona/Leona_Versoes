package br.leona.server.controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
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
}
