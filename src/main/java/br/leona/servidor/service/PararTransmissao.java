package br.leona.servidor.service;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class PararTransmissao implements Job {
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        //Colocar o método de ligar camera
        System.out.println("Parou transmisssao");
        //Coloca o método do WS de parar transmissão
    }
    
}
