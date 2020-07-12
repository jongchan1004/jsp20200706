package selfTest;

public class Member {
	private String name;
	private String firstName;
	private String lastName;
	private int age;
	
	public Member() {}
	public Member(String name, int age) {
		this.name = name;
		this.age = age;
	}
	public Member(String firstName, String lastName, int age) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
	}
	public String getName() { return name; }
	public void setName(String name) {this.name = name;}
	public int getAge() { return age; }
	
	public String getFirstName() {return firstName;}
	public void setFirstName(String firstName) {this.firstName = firstName;}
	public String getLastName() {return lastName;}
	public void setLastName(String lastName) {this.lastName = lastName;}

}
