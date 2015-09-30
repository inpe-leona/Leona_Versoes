package br.leona.servidor.service;

import java.util.Date;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class LigarCamera implements Job {
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        //Colocar o método de ligar camera
        System.out.println("Ligou");
        //Coloca o método do WS de ligar camera

    }
    
}
