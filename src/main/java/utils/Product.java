package utils;

public class Product {

	private String pId; 
	private String pName; 
	private String pPrice; 
	private int keyId;
	
	
	public Product(String pId, String pName, String pPrice) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pPrice = pPrice;
	}
	
	


	public Product(int keyId,String pId, String pName, String pPrice) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pPrice = pPrice;
		this.keyId = keyId;
	}




	public String getpId() {
		return pId;
	}


	public void setpId(String pId) {
		this.pId = pId;
	}


	public String getpName() {
		return pName;
	}


	public void setpName(String pName) {
		this.pName = pName;
	}


	public String getpPrice() {
		return pPrice;
	}


	public void setpPrice(String pPrice) {
		this.pPrice = pPrice;
	}


	public int getKeyId() {
		return keyId;
	}


	public void setKeyId(int keyId) {
		this.keyId = keyId;
	}
	
	
	
	
	
	
	
	
	
//	public String toTableEntity() {
//		StringBuilder record = new StringBuilder(50);
//		record.append("<tr>");
//		
//		record.append("<td>");
//		record.append(cId);
//		record.append("</td>");
//		
//		record.append("<td>");
//		record.append(name);
//		record.append("</td>");
//		
//		record.append("<td>");
//		record.append(address);
//		record.append("</td>");
//		
//		record.append("<td>");
//		record.append(age);
//		record.append("</td>");
//		
//		record.append("<td>");
//		record.append(experience);
//		record.append("</td>");
//		
//		record.append("<td>");
//		record.append(skills);
//		record.append("</td>");
//		
//		record.append("<td>");
//		record.append(city);
//		record.append("</td>");
//		
//		record.append("<td>");
//		record.append(expectedSalary);
//		record.append("</td>");
//		
//		record.append("</tr>");
//		
//		return record.toString();
//	}
//	
//	public static String toTableHeader() {
//		StringBuilder record = new StringBuilder(50);
//		
//		record.append("<th>");
//		record.append("CID");
//		record.append("</th>");
//		
//		record.append("<th>");
//		record.append("Name");
//		record.append("</th>");
//		
//		record.append("<th>");
//		record.append("Address");
//		record.append("</th>");
//		
//		record.append("<th>");
//		record.append("Age");
//		record.append("</th>");
//		
//		record.append("<th>");
//		record.append("Experience");
//		record.append("</th>");
//		
//		record.append("<th>");
//		record.append("Skills");
//		record.append("</th>");
//		
//		record.append("<th>");
//		record.append("City");
//		record.append("</th>");
//		
//		record.append("<th>");
//		record.append("Expected Salary");
//		record.append("</th>");
//		
//		
//		return record.toString();
//	}

}
