

package br.leona.server.controller;

public class CaminhoPaginas {

    public static String master = "WEB-INF/jsp/";
    
    //index
    public static String LOGIN = master+"index/login.jsp";
    
    //usuario
    public static String CADASTRO_USUARIO = master+"usuario/cadastro.jsp";
    public static String CADASTRO_USUARIO_OK = master+"usuario/cadastro_ok.jsp";
    public static String MENU_PRINCIPAL = master+"usuario/menu.jsp";
    
    //estacao
    public static final String LISTAGEM_ESTACAO = master+"estacao/lista.jsp";
    public static final String CADASTRO_ESTACAO = master+"estacao/cadastro.jsp";
    
    public static final String CADASTRO_OBSERVACAO_OK = master+"observacao/okobservacao.jsp"; 
    public static final String CADASTRO_OBSERVACAO = master+"observacao/cadastro.jsp";
    public static final String VISUALIZAR_OBSERVACAO = master+"observacao/visualizar.jsp";
}
