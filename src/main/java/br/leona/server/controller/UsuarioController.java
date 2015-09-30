package br.leona.server.controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.leona.server.model.Usuario;
import br.leona.server.service.UsuarioService;
import java.security.NoSuchAlgorithmException;

@Resource
public class UsuarioController {
    
    private UsuarioService usuS;
    private IndexController indC;
    
    public UsuarioController(Result r){
        this.usuS = new UsuarioService();   
        this.indC = new IndexController(r);
    }
    
    @Post
    @Path("/cadastrarUsuario")
    public void cadastrarUsuario(Usuario usuario) throws NoSuchAlgorithmException{
        String r = usuS.cadastrar(usuario);
        if (r == "ok"){
            indC.paginaCadastroUsuarioSucesso(); 
        }else{
            indC.cadastroUsuario(usuario, r);
        }
        
    }
    
    @Post
    @Path("/logarUsuario")
    public void logarUsuario(Usuario usuario) throws NoSuchAlgorithmException{
        System.out.println("usuar"+usuario.getEmail());
        System.out.println("usuar"+usuario.getSenha());
        Usuario u = usuS.logar(usuario);
        if (u == null){
            indC.login(usuario, "Usuario/Senha não encontrados");
        }else{
            if (u.getStatus().equals("Inativo")){
                indC.login(usuario, "Usuário está desativado");
            }else{
                if (u.getPerfil().equals("Administrador")){
                    //Pagina usuario adm
                    indC.menuPrincipal(u);
                }else if(u.getPerfil().equals("Comum")){
                    //Pagina usuario comum
                    indC.menuPrincipal(u);
                }else{
                    //Pagina usuario observador
                    indC.menuPrincipal(u);
                }
            }
        }
    }
}