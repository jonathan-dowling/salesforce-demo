package ie.salesforce.data;

public class OutputTuple {
	
	RepresentativeOutput representative;
	CustomerOutput company;
	
	public OutputTuple(Representative representative, Customer company) {
		super();
		RepresentativeOutput repOut = new RepresentativeOutput();
		repOut.setName(representative.getName());
		repOut.setEmail(representative.getEmail());
		repOut.setPhone(representative.getPhone());
		this.representative = repOut;
		
		CustomerOutput custOut = new CustomerOutput();
		custOut.setName(company.getName());
		custOut.setAddress(company.getAddress());
		custOut.setContact(company.getContact());
		this.company = custOut;
	}

	public RepresentativeOutput getRepresentative() {
		return representative;
	}

	public void setRepresentative(RepresentativeOutput representative) {
		this.representative = representative;
	}

	public CustomerOutput getCompany() {
		return company;
	}

	public void setCompany(CustomerOutput company) {
		this.company = company;
	}

}
