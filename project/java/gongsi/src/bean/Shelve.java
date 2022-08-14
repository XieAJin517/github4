package bean;

public class Shelve {
	private int sheid;
	private int lattice;
	private int whid;
	private int state;
	private String specification;
	public int getSheid() {
		return sheid;
	}
	public int getLattice() {
		return lattice;
	}
	public int getWhid() {
		return whid;
	}
	public int getState() {
		return state;
	}
	public String getSpecification() {
		return specification;
	}
	public void setSheid(int sheid) {
		this.sheid = sheid;
	}
	public void setLattice(int lattice) {
		this.lattice = lattice;
	}
	public void setWhid(int whid) {
		this.whid = whid;
	}
	public void setState(int state) {
		this.state = state;
	}
	public void setSpecification(String specification) {
		this.specification = specification;
	}

}
