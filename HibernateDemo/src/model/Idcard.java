package model;

/**
 * Idcard entity. @author MyEclipse Persistence Tools
 */

public class Idcard implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String cardNumber;
	private People people ;
	// Constructors

	/** default constructor */
	public Idcard() {
	}

	/** full constructor */
	public Idcard(String cardNumber,People people) {
		this.cardNumber = cardNumber;
		this.people = people;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCardNumber() {
		return this.cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public People getPeople() {
		return people;
	}

	public void setPeople(People people) {
		this.people = people;
	}
	

}