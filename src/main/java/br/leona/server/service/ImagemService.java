package br.leona.server.service;

import br.leona.server.dao.ConsultasEstacaoDao;
import br.leona.server.model.Estacao;
import br.leona.server.model.Observacao;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import org.esfinge.querybuilder.QueryBuilder;

public class ImagemService {

    ConsultasEstacaoDao dao = QueryBuilder.create(ConsultasEstacaoDao.class);

    public void iniciarGravacao() {
        
        /*try { // Call Web Service Operation
            br.leona.estacao.controller.ControllerServices_Service service = new br.leona.estacao.controller.ControllerServices_Service();
            br.leona.estacao.controller.ControllerServices port = service.getControllerServicesPort();
            // TODO process result here
            java.lang.String result = port.executarCaptura();
            System.out.println("Result = "+result);
        } catch (Exception ex) {
            // TODO handle custom exceptions here
        }*/

        System.out.println("Iniciou Gravação");
    }

    public void pararGravacao() {

        
        /*try { // Call Web Service Operation
            br.leona.estacao.controller.ControllerServices_Service service = new br.leona.estacao.controller.ControllerServices_Service();
            br.leona.estacao.controller.ControllerServices port = service.getControllerServicesPort();
            // TODO process result here
            java.lang.String result = port.matarCaptura();
            System.out.println("Result = "+result);
        } catch (Exception ex) {
            // TODO handle custom exceptions here
        }
*/
        System.out.println("Parou Gravação");
    }
    
    public void ligarCamera()  {
        
        //Aqui coloco para ligar câmera, iniciar transmissor e iniciar captura

        System.out.println("Ligou Câmera");
    }

    public void pararCamera() {
        
        //Aqui coloco para matar captura, matar transmissor e desligar câmera

        System.out.println("Parou Câmera");
    }

    public Estacao buscarEstacaoIP(String ip) {
        return dao.getEstacaoByIp(ip);
    }

    
}
