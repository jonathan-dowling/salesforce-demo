package ie.salesforce.data;

public class CustomerOutput {

	private String name;
    private String address;
    private Contact contact;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Contact getContact() {
		return contact;
	}
	public void setContact(Contact contact) {
		this.contact = contact;
	}
	public String toString() {
		return getName() + ", " + getAddress() + ", " + getContact().getName();
	}
}
