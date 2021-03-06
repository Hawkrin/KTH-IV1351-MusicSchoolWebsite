package se.kth.iv1351.bankjdbc.model;

/**
 * Information about people renting instruments
 */
public class RentedBy implements RentedByDTO {
    private String first_name;
    private String last_name;
    private String type;
    private String brand;
    private int quantity;
    private int rented_id;

    /**
     * Creates a table of person renting data
     * 
     * @param first_name firstname of person
     * @param last_name  lastname of person
     * @param type       instrument type
     * @param brand      instrument brand
     * @param quantity   amount rented
     */
    public RentedBy(String first_name, String last_name, String type, String brand, int quantity, int rented_id) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.type = type;
        this.brand = brand;
        this.quantity = quantity;
        this.rented_id = rented_id;
    }

    /**
     * retrieves first name of a person renting
     */
    public String getFirstName() {
        return this.first_name;
    }

    public String toString() {
        StringBuilder stringRepresentation = new StringBuilder();
        stringRepresentation.append("Rented Information: ");
        stringRepresentation.append("First name: ");
        stringRepresentation.append(first_name);
        stringRepresentation.append(", Last name: ");
        stringRepresentation.append(last_name);
        stringRepresentation.append(", type: ");
        stringRepresentation.append(type);
        stringRepresentation.append(", brand: ");
        stringRepresentation.append(brand);
        stringRepresentation.append(", quantity: ");
        stringRepresentation.append(quantity);
        stringRepresentation.append(", rented_id: ");
        stringRepresentation.append(rented_id);
        return stringRepresentation.toString();
    }
}
