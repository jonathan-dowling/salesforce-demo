package ie.salesforce.web.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ie.salesforce.data.OutputTuple;
import ie.salesforce.service.CustRepService;
import ie.salesforce.service.CustRepServiceImpl;

/**
 * The controller that defines the Rest interface
 */
@RestController
public class CustRepController {
	
	private CustRepService custReprService;

	// The Rest interface URL is specified in the value here
	@RequestMapping(value = "/salesforce/v1/saleslist", method = RequestMethod.GET)
	public List<OutputTuple> returnCustomerAndRepresentativeList()
	{
		// Run the main job and get the reps and customers back
		custReprService = new CustRepServiceImpl();
		return custReprService.runSalesRepresentativesJob();
    }
}