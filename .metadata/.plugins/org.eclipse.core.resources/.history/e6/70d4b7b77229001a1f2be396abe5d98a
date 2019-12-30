package lu.scoteqint.extract.web.controller;

import ie.salesforce.extract.service.CustRepService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CustRepController {
	
	@Autowired
	private CustRepService custReprService;

	@RequestMapping(value = "/secure/salesforce/saleslist", method = RequestMethod.POST)
	public ModelAndView returnCustomerAndRepresentativeList(Model model)
	{
		String message = custReprService.runSalesRepresentativesJob();

		model.addAttribute("title", "List of Customers and Representatives");
		model.addAttribute("message", message);
        return new ModelAndView("/secure/salesforce/custrepoutput", "model", model);
    }

}
