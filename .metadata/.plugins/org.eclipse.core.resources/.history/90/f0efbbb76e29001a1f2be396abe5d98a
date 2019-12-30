package ie.salesforce.extract.batch;

import org.springframework.batch.core.StepContribution;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.repeat.RepeatStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class GenerateSalesAndRepresentativesDataTasklet implements Tasklet {
	
	@Autowired
	private SalesAndRepresentativesData generator;
	
	@Override
	public RepeatStatus execute(StepContribution contribution, ChunkContext chunkContext) throws Exception {
		generator.generateOutput();
		// How to return the string to the screen?
		
		return RepeatStatus.FINISHED ;
	}
	
}
