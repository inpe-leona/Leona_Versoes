/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.leona.servidor.service;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 *
 * @author Leona1
 */
public class IniciarCaptura  implements Job {
    
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        //Colocar o método de ligar camera
        System.out.println("Iniciou captura");
        
        //Coloca o método do WS de iniciar captura
        
        


    }
    
}
