package ie.salesforce.extract.service;

import ie.salesforce.extract.batch.SalesAndRepresentativesData;

import java.util.Date;

import org.apache.log4j.Logger;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.JobParametersInvalidException;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.core.repository.JobExecutionAlreadyRunningException;
import org.springframework.batch.core.repository.JobInstanceAlreadyCompleteException;
import org.springframework.batch.core.repository.JobRestartException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustRepServiceImpl implements CustRepService {

	//private static final Logger LOGGER = Logger.getLogger(CustRepServiceImpl.class.getName());

	@Autowired
	public JobLauncher jobLauncher;

	@Autowired
	//public Job custReprDataJobBean;
	public SalesAndRepresentativesData generator;
	
	@Override
	public String runSalesRepresentativesJob() {

		//SalesAndRepresentativesData generator = new SalesAndRepresentativesData();
		String message = generator.generateOutput();

		return message;
/*
		boolean jobStarted = true;
		
		JobParameters params = new JobParametersBuilder().addDate("startTime", new Date())
				.toJobParameters();

		try {
			jobLauncher.run(custReprDataJobBean, params);
		} catch (JobExecutionAlreadyRunningException e) {
			LOGGER.fatal("Load of file %s is already running", e);
			jobStarted = false;
		} catch (JobRestartException e) {
			LOGGER.fatal("FAIL: Load of file %s can not be restarted", e);
			jobStarted = false;
		} catch (JobInstanceAlreadyCompleteException e) {
			LOGGER.fatal("FAIL: Load of file %s has already completed", e);
			jobStarted = false;
		} catch (JobParametersInvalidException e) {
			LOGGER.fatal("FAIL: Request to load file %s has invalid job parameters", e);
			jobStarted = false;
		}
		return jobStarted;
*/
	}

}
