package ie.salesforce.batch;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import ie.salesforce.data.Contact;
import ie.salesforce.data.Customer;
import ie.salesforce.data.CustomerOutput;
import ie.salesforce.data.OutputTuple;
import ie.salesforce.data.Position;
import ie.salesforce.data.Representative;
import ie.salesforce.data.RepresentativeOutput;

public class SalesAndRepresentativesData {
	
	protected String representativeListFilename = "src_resources/representatives.properties";
	
	protected String customerListFilename = "src_resources/customers.properties";

	private List<Customer> customerList;

	private List<Representative> representativeList;
	
	private List<OutputTuple> custReps;

	public SalesAndRepresentativesData() {
		customerList = new ArrayList<>();
		representativeList = new ArrayList<>();
		custReps = new ArrayList<>();
	}

	/**
	 * Load the customer and rep data from JSON files 
	 * Example rep:
	 * 	"name": "Rep 7",
	 *  "email": "rep7@salesforce.com",
	 *  "phone": "00000007",
	 *  "location": "36.137178, -79.442645"
	 *  
	 * Example cust:
	 *  "NAME": "ARROW ELECTRONICS",
	 *  "ADDRESS": "9201 EAST DRY CREEK ROAD",
	 *  "ADDRESS2": "NOT AVAILABLE",
	 *  "CITY": "CENTENNIAL",
	 *  "STATE": "CO",
	 *  "ZIP": "80112",
	 *  "LATITUDE": 39.581553,
	 *  "LONGITUDE": -104.88214,
	 *  "CONTACT": {
	 *    "NAME": "Murphy Stephanie",
	 *    "EMAIL": "StephanieLMurphy@teleworm.us",
	 *    "PHONE": "(07) 3938 4539"
	 *	}
	 */
	public void loadData() {
		
		JSONParser parser = new JSONParser();

		// Reps
        try {
            Object array = parser.parse(new FileReader(representativeListFilename));
            JSONArray jsonArray = (JSONArray)array;
            
            for (Object obj : jsonArray) {
            	JSONObject repObj = (JSONObject)obj;
            	Representative rep = new Representative();
            	
            	rep.setName((String) repObj.get("name"));
            	rep.setEmail((String) repObj.get("email"));
            	rep.setPhone((String) repObj.get("phone"));
            	
            	// Get the lat and long from the location string by splitting on the comma
            	String location = (String) repObj.get("location");
            	String[] locationArray = location.split(",");
	            double lat = new Double(locationArray[0].trim()).doubleValue();
	            double lon = new Double(locationArray[1].trim()).doubleValue();
	            rep.setLatitude(lat);
	            rep.setLongitude(lon);
	            
	            representativeList.add(rep);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }

        // Customers
        try {
            Object array = parser.parse(new FileReader(customerListFilename));
            JSONArray jsonArray = (JSONArray)array;
            
            for (Object obj : jsonArray) {
            	JSONObject repObj = (JSONObject)obj;
            	Customer cust = new Customer();
            	
            	cust.setName((String) repObj.get("NAME"));
            	
            	// Build one long address string
            	StringBuilder address = new StringBuilder("");
            	address.append((String) repObj.get("ADDRESS")).append(", ");
            	String address2 = (String) repObj.get("ADDRESS2");
            	address.append(address2.equals("NOT AVAILABLE") ? "" : address2 + ", ");
            	address.append((String) repObj.get("CITY")).append(", ");
            	address.append((String) repObj.get("STATE")).append(", ");
            	address.append((String) repObj.get("ZIP"));
            	cust.setAddress(address.toString());
            	
            	cust.setLatitude( ((Double) repObj.get("LATITUDE")).doubleValue());
            	cust.setLongitude( ((Double) repObj.get("LONGITUDE")).doubleValue());
            	
                JSONObject contact = (JSONObject) repObj.get("CONTACT");
                Contact con = new Contact();
            	con.setName((String) contact.get("NAME"));
            	con.setEmail((String) contact.get("EMAIL"));
            	con.setPhone((String) contact.get("PHONE"));
            	cust.setContact(con);
            	
            	customerList.add(cust);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
	}

	/**
	 * Main method. Load data, do the matching
	 * @return the matches
	 */
	public List<OutputTuple> generateOutput() {
		loadData();

		custReps = matchRepsWithCusts();
		
		return custReps;
	}

	/**
	 * For each customer, check its distance to every rep and record the closest
	 * @return map of reps and customers
	 */
	public List<OutputTuple> matchRepsWithCusts() {
		// Make a copy of the rep list so we can remove items from it later
		List<Representative> repList = getRepresentativeList();
		for (Customer cust : customerList) {
			double lowestDistance = 100000; //start with a max value
			Representative closestRep = new Representative();
			for (Representative rep : repList) {
				Position pos1 = new Position(cust.getLatitude(), cust.getLongitude());
				Position pos2 = new Position(rep.getLatitude(), rep.getLongitude());
				// Calculate the distance between customer and rep
				double distance = calculateDistance(pos1, pos2);
				// If this is the lowest so far, record it
				if (distance < lowestDistance) {
					lowestDistance = distance;
					closestRep = rep;
				}
			}
			// Record the customer and closest rep. Cast to the basic class that excludes 
			// position data as this isn't needed for JSON output
			OutputTuple outputTuple = new OutputTuple(closestRep, cust);
			custReps.add(outputTuple);
			// Remove this rep from the list so it won't be chosen again
			repList.remove(closestRep);
		}
		
		return custReps;
	}

	/**
	 * Calculate the distance over the ground between two points expressed using lat/long
	 * @param position 1
	 * @param position 2
	 * @return distance in km as double
	 */
	public double calculateDistance(Position pos1, Position pos2) {
		// Radius of Earth in km, average of equatorial and polar
		double EARTH_RADIUS = 6367;
		double phi1 = Math.toRadians(pos1.getLatitude());
		double lambda1 = Math.toRadians(pos1.getLongitude());
		double phi2 = Math.toRadians(pos2.getLatitude());
		double lambda2 = Math.toRadians(pos2.getLongitude());
		
		// Calculate geographic distance using Haversine formula
		double term1 = Math.pow(Math.sin((phi2-phi1)/2),2);
		double term2 = Math.pow(Math.sin((lambda2-lambda1)/2),2);
		term2 = term2 * Math.cos(phi1) * Math.cos(phi2);
		
		double distance = 2 * EARTH_RADIUS * Math.sinh(Math.sqrt(term1 + term2));
		
		return distance;
	}
	
	public List<Customer> getCustomerList() {
		return customerList;
	}

	public void setCustomerList(ArrayList<Customer> customerList) {
		this.customerList = customerList;
	}
	
	public List<Representative> getRepresentativeList() {
		return representativeList;
	}

	public void setRepresentativeList(ArrayList<Representative> representativeList) {
		this.representativeList = representativeList;
	}

}
