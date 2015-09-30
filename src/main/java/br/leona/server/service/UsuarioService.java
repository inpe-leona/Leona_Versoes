package br.leona.server.service;

import br.com.caelum.vraptor.ioc.Component;
import br.leona.server.dao.UsuarioDao;
import br.leona.server.model.Usuario;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.esfinge.querybuilder.QueryBuilder;

@Component
public class UsuarioService {

    private static final long serialVersionUID = -1917047398280846082L;
    UsuarioDao dao = QueryBuilder.create(UsuarioDao.class);

    public String cadastrar(Usuario usuario) throws NoSuchAlgorithmException {
        if ((usuario.getEmail().equals("")) || (usuario.getSenha().equals("")) || (usuario.getNome().equals(""))) {
            return "Campos obrigatórios em branco";
        } else {
            usuario.setStatus("Inativo");
            usuario.setPerfil("Comum");
            usuario.setSenha(criptografar(usuario.getSenha()));
            dao.save(usuario);
            return "ok";
        }
    }

    private String criptografar(String senha) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA1");
        md.reset();
        byte[] buffer = senha.getBytes();
        md.update(buffer);
        byte[] digest = md.digest();

        String hexStr = "";
        for (int i = 0; i < digest.length; i++) {
            hexStr += Integer.toString((digest[i] & 0xff) + 0x100, 16).substring(1);
        }
        return hexStr;
    }

    public Usuario logar(Usuario usuario) throws NoSuchAlgorithmException {
        if ((usuario.getEmail().equals("")) || (usuario.getSenha().equals(""))) {
            return null;
        } else {
            String senha = criptografar(usuario.getSenha());
            System.out.println("a"+senha);
            System.out.println("a"+usuario.getEmail());
            Usuario u = dao.getUsuarioByEmailAndSenha(usuario.getEmail(), senha);
            System.out.println("u: "+u);
            return u;
        }
    }

}
