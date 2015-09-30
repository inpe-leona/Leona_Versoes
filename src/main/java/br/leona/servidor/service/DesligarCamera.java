/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.leona.servidor.service;

import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
/**
 *
 * @author Nicolas Leona
 */
public class DesligarCamera  implements Job {
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        //Colocar o método de desligar camera
        System.out.println("Desligou");
        
        //Coloca o método do WS se desligar camera

        //Colocar o método de buscar as imagens
        ImagemService im = new ImagemService();
        try {
            im.buscarImagens();
        } catch (IOException ex) {
            Logger.getLogger(DesligarCamera.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(DesligarCamera.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
