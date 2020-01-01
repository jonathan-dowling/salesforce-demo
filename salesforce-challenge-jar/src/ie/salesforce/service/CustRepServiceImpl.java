package ie.salesforce.service;

import java.util.List;

import org.springframework.stereotype.Service;

import ie.salesforce.batch.SalesAndRepresentativesData;
import ie.salesforce.data.OutputTuple;

/**
 * The service layer for the Rest controller
 */
@Service
public class CustRepServiceImpl implements CustRepService {

	public SalesAndRepresentativesData generator;
	
	@Override
	public List<OutputTuple> runSalesRepresentativesJob() {
		generator = new SalesAndRepresentativesData();
		List<OutputTuple> message = generator.generateOutput();
		return message;
	}

}
