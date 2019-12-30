package ie.salesforce.extract.config;

import ie.salesforce.extract.batch.GenerateSalesAndRepresentativesDataTasklet;

import java.io.IOException;

import lu.scoteqint.extract.bloomberg.batch.FlowErrorTask;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepScope;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.integration.config.EnableIntegration;
import org.springframework.retry.annotation.EnableRetry;

/**
 * Code based configuration for sales and representatives data generation
 *
 */
@Configuration
@EnableBatchProcessing
@EnableIntegration
@EnableRetry
@ComponentScan(basePackages = {"ie.salesforce.extract"})
public class CustRepDataConfiguration {
    
	private static final String FAILED = "FAILED";

	@Autowired
	public StepBuilderFactory stepBuilderFactory;
    	
	@Autowired
	public JobBuilderFactory jobBuilderFactory;
	
	@Autowired
	public JobLauncher jobLauncher;

	@Bean
	public Step errorStep() {
		return stepBuilderFactory.get("errorStep").tasklet(flowError()).build();
	}

	@Bean
	public Tasklet flowError() {
		return new FlowErrorTask();
	}

	/**
	 * Bean to launch the Load
	 * @return CustReprJobLauncher
	 * @throws IOException 
	 */
/*
	@Bean
	public CustReprJobLauncher custReprJobLauncherBean() throws IOException  {
		CustReprJobLauncher launcher = new CustReprJobLauncher();
		launcher.setJobLauncher(jobLauncher);
		launcher.setJob(custReprDataJobBean());
		return launcher;
	}
*/
	/**
	 * Job to generate the data
	 * @return Job
	 * @throws IOException 
	 */
	@Bean
	public Job custReprDataJobBean() throws IOException {
		return jobBuilderFactory.get("custReprDataJobBean")
				.flow(performCalculations())
 	 			.on(FAILED).to(errorStep())

 	 			.end()
				.build();
	}
	
	// STEPS
	
	@Bean
	public Step performCalculations() {
		return stepBuilderFactory.get("performCalculations").tasklet(performCalculationsTask()).build();
	}
	
	@Bean
	@StepScope
	public Tasklet performCalculationsTask() {
		return new GenerateSalesAndRepresentativesDataTasklet();
	}
}
