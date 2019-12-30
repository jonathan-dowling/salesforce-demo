package ie.salesforce.extract.schedule;

import lu.scoteqint.common.logging.SeiLogger;

import org.springframework.batch.core.ExitStatus;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.launch.JobLauncher;

/**
 * Simple launcher to avoid relying on SimpleExtractJobBean. Takes a jobLauncher and a job
 */
public class CustRepJobLauncher {
	
	private static final SeiLogger logger = SeiLogger.getLogger(CustRepJobLauncher.class.getName());
	
	private JobLauncher jobLauncher;
	
	private Job job;

	/**
	 * Run the job and log appropriately
	 */
	public void run() {
		if (job == null) { 
			logger.error("Error launching job - job cannot be null"); 
			return; 
		}
		if (jobLauncher == null) { 
			logger.error("Error launching job - jobLauncher cannot be null"); 
			return; 
		}
		
		try {
			logger.info("Attempting to launch " + job.getName());
			JobParameters params = new JobParametersBuilder()
				.addLong("time", System.currentTimeMillis())
				.toJobParameters();
			ExitStatus jobExitStatus = jobLauncher.run(job, params).getExitStatus();

			if ((jobExitStatus == null) || !jobExitStatus.getExitCode().equals(ExitStatus.COMPLETED.getExitCode())) {
				String msg = "Error occurred during execution of " + job.getName();
				if (jobExitStatus != null) {
					msg = msg + " - job returned with Exit Status of " + jobExitStatus.getExitCode();
				}
				logger.error(msg);
			}
			logger.info(job.getName() + " completed successfully");
		} catch (Exception e) {
			logger.error("Exception occurred trying to launch " + job.getName(), e);
		}
	}

	public void setJobLauncher(JobLauncher jobLauncher) {
		this.jobLauncher = jobLauncher;
	}

	public void setJob(Job job) {
		this.job = job;
	}
}
