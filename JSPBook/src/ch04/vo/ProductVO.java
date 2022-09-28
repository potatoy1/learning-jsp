package ch04.vo;

import java.io.Serializable;

// ProductVO : PRODUCT 테이블의 1 행을 담음
// VO : Vlaue Object
// 자바빈 클래스(멤버변수, 기본 생성자, getter/setter메소드)
// implements Serializable : 직렬화, 인터페이스를 상속받음(생략 가능)
public class ProductVO implements Serializable{
	// 생략 가능
	private static final long serialVersionUID = -4274700572038677000L;

	// 멤버변수
	private String productId; 		// 상품 아이디(PRODUCT테이블의 PRODUCT_ID 컬럼)
	private String pname;	  		// 상품 명
	private Integer unitPrice; 		// 상품 가격
	private String description; 	// 상품 설명
	private String manufacturer; 	// 제조사
	private String category; 		// 분류
	private Integer unitsInStock;	// 재고수
	private String condition; 		// 신상품 or 중고품 or 재생품
	
	// 기본 생성자
	public ProductVO() {}
	
	// 상품 아이디, 상품명, 가격을 매개변수로 받는 생성자-> 멤버변수에 할당
	public ProductVO(String productId, String pname, int unitPrice) {
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}

	// getter/setter 메소드
	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Integer getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(Integer unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ProductVO [productId=" + productId + ", pname=" + pname + ", unitPrice=" + unitPrice + ", description="
				+ description + ", manufacturer=" + manufacturer + ", category=" + category + ", unitsInStock="
				+ unitsInStock + ", condition=" + condition + "]";
	}
	

	
}
