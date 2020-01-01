package ie.salesforce.service;

import java.util.List;

import ie.salesforce.data.OutputTuple;

public interface CustRepService {

	/**
	 * Run the class that creates the customer and representative list.
	 * @return the output of the customers and reps
	 */
	List<OutputTuple> runSalesRepresentativesJob();

}
