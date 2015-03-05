public class Employee {
	private int id;
	private String first_name;
	private String last_name;
	private int salary;

	/* Define constructors for the Employee class. */
	public Employee() {
	}

	public Employee(String fname, String lname, int salary) {
		this.first_name = fname;
		this.last_name = lname;
		this.salary = salary;
	}

	/* Here are the method definitions */
	public int getId() {
		return id;
	}

	public String getFirstName() {
		return first_name;
	}

	public String getLastName() {
		return last_name;
	}

	public int getSalary() {
		return salary;
	}
} /* End of Employee */