
package br.leona.servidor.service;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class IniciarTransmissao implements Job {
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        //Colocar o método de ligar camera
        System.out.println("Iniciou transmisssao");
        //Coloca o método do WS de iniciar transmissão
    }
}
