package ie.salesforce.batch;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import ie.salesforce.data.Customer;
import ie.salesforce.data.CustomerOutput;
import ie.salesforce.data.OutputTuple;
import ie.salesforce.data.Position;
import ie.salesforce.data.Representative;
import ie.salesforce.data.RepresentativeOutput;

public class SalesAndRepresentativesDataTest {

	SalesAndRepresentativesData salesAndRepresentativesData;

	@Before
	public void before() {
		salesAndRepresentativesData = new SalesAndRepresentativesData();
	}

	@Test
	public void testLoadData() {
		//setup
		String output = "";
		
		//test
		salesAndRepresentativesData.loadData();

		for (Customer cust : salesAndRepresentativesData.getCustomerList()) {
			output = output + cust.toString() + "\n";
		}
		for (Representative rep : salesAndRepresentativesData.getRepresentativeList()) {
			output = output + rep.toString() + "\n";
		}
		
		// verify
		System.out.println(output);
		Assert.assertTrue("Data should have mentioned Mullins Janae", output.contains("Mullins Janae"));
		Assert.assertTrue("Data should have mentioned PNC FINANCIAL SERVICES GROUP", output.contains("PNC FINANCIAL SERVICES GROUP"));
		Assert.assertTrue("Data should have mentioned rep11@salesforce.com", output.contains("rep11@salesforce.com"));
		Assert.assertTrue("Data should have mentioned rep16@salesforce.com", output.contains("rep16@salesforce.com"));
	}
	
	@Test
	public void testCalculateDistance() throws Exception {
		//setup
		// Dublin
		Position pos1 = new Position(53.3498, 6.2603);
		// Cork
		Position pos2 = new Position(51.8985, 8.4756);

		//test
		double dubCorkDist = salesAndRepresentativesData.calculateDistance(pos1, pos2);

		//verify
		Assert.assertTrue("Distance from Dublin to Cork should be around 220 km", 
				Math.abs(dubCorkDist-220) < 2);
	}

	@Test
	public void testGenerateData() {
		//setup
		List<OutputTuple> allOutput = new ArrayList<>();
		
		//test
		allOutput = salesAndRepresentativesData.generateOutput();
		
		//verify
		for (OutputTuple entry : allOutput) {
			RepresentativeOutput rep = entry.getRepresentative();
			CustomerOutput cust = entry.getCompany();
			if (rep.getName().equals("Rep 6")) {
				Assert.assertTrue("Rep 6 should have been paired with this customer", cust.getName().equals("ALBERTSONS COS."));
			}
			if (rep.getName().equals("Rep 27")) {
				Assert.assertTrue("Rep 27 should have been paired with this customer", cust.getName().equals("STEEL DYNAMICS"));
			}
		}
	}
}
