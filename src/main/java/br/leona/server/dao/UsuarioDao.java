package br.leona.server.dao;

import br.leona.server.model.Usuario;
import org.esfinge.querybuilder.Repository;

public interface UsuarioDao extends Repository<Usuario>{
    
    Usuario getUsuarioByEmailAndSenha(String email, String senha);
    
}
