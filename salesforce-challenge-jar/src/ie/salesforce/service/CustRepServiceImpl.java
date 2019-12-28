package ie.salesforce.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ie.salesforce.batch.SalesAndRepresentativesData;

@Service
public class CustRepServiceImpl implements CustRepService {

	@Autowired
	//public Job custReprDataJobBean;
	public SalesAndRepresentativesData generator;
	
	@Override
	public String runSalesRepresentativesJob() {
		String message = generator.generateOutput();
		return message;
	}

}
