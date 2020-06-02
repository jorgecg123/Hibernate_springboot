package mx.com.trnetwork.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

@Entity
public class Producto {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "prod_Sequence")
	@SequenceGenerator(name = "prod_Sequence", sequenceName = "PROD_SEQ", allocationSize = 1)
	private Long id;
	@Column(name = "name")
	private String name;
	@Column(name = "price")
	private float price;
	@Column(name = "description")
	private String description;
	@Column(name = "img")
	private String img;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "categoria_id", nullable = false)
	private Categoria cat;
	public Producto() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Categoria getCat() { 
		return cat; 
		}
	
	public void setCat(Categoria cat) { 
		this.cat = cat; 
	
	}
	
	@Override 
	public String toString() { 
		return "Producto [id=" + id + ", name="
	+ name + ", price=" + price + ", description=" + description + ", img=" + img
	+ ", cat=" + cat + "]"; 
	}

}

/*
 * package mx.com.trnetwork.model;
 * 
 * import javax.persistence.Column; import javax.persistence.Entity; import
 * javax.persistence.FetchType; import javax.persistence.GeneratedValue; import
 * javax.persistence.GenerationType; import javax.persistence.Id; import
 * javax.persistence.JoinColumn; import javax.persistence.ManyToOne; import
 * javax.persistence.SequenceGenerator;
 * 
 * @Entity
 * 
 * @SequenceGenerator(name = "producto_Sequence", sequenceName = "PROD_SEQ")
 * public class Producto {
 * 
 * @Id // @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = //
 * "prod_Sequence")
 * 
 * @GeneratedValue(strategy = GenerationType.TABLE, generator = "sequences")
 * // @SequenceGenerator(name = "prod_Sequence", sequenceName = "PROD_SEQ", //
 * allocationSize = 1) private Long id;
 * 
 * @Column(name = "name") private String name;
 * 
 * @Column(name = "price") private float price;
 * 
 * 
 * @Column(name = "description") private String description;
 * 
 * @Column(name = "img") private String img;
 * 
 * @ManyToOne(fetch = FetchType.LAZY)
 * 
 * @JoinColumn(name = "categoria_id", nullable = false) private Categoria cat;
 * 
 * public Producto() { }
 * 
 * public Long getId() { return id; }
 * 
 * public void setId(Long id) { this.id = id; }
 * 
 * public String getName() { return name; }
 * 
 * public void setName(String name) { this.name = name; }
 * 
 * public float getPrice() { return price; }
 * 
 * public void setPrice(float price) { this.price = price; }
 * 
 * public String getDescription() { return description; }
 * 
 * public void setDescription(String description) { this.description =
 * description; }
 * 
 * public String getImg() { return img; }
 * 
 * public void setImg(String img) { this.img = img; }
 * 
 * public Categoria getCat() { return cat; }
 * 
 * public void setCat(Categoria cat) { this.cat = cat; }
 * 
 * @Override public String toString() { return "Producto [id=" + id + ", name="
 * + name + ", price=" + price + ", description=" + description + ", img=" + img
 * + ", cat=" + cat + "]"; }
 * 
 * }
 */
