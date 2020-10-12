package com.homme.model.entity;

import java.sql.Timestamp;

public class HommeVo {
	private int jnum;
	private String jname;
	private int jprice;
	private Timestamp nalja;
	
	public HommeVo() {}

	public HommeVo(int jnum, String jname, int jprice, Timestamp nalja) {
		super();
		this.jnum = jnum;
		this.jname = jname;
		this.jprice = jprice;
		this.nalja = nalja;
	}

	public int getJnum() {
		return jnum;
	}

	public void setJnum(int jnum) {
		this.jnum = jnum;
	}

	public String getJname() {
		return jname;
	}

	public void setJname(String jname) {
		this.jname = jname;
	}

	public int getJprice() {
		return jprice;
	}

	public void setJprice(int jprice) {
		this.jprice = jprice;
	}

	public Timestamp getNalja() {
		return nalja;
	}

	public void setNalja(Timestamp nalja) {
		this.nalja = nalja;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((jname == null) ? 0 : jname.hashCode());
		result = prime * result + jnum;
		result = prime * result + jprice;
		return result;
	}
	

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		HommeVo other = (HommeVo) obj;
		if (jname == null) {
			if (other.jname != null)
				return false;
		} else if (!jname.equals(other.jname))
			return false;
		if (jnum != other.jnum)
			return false;
		if (jprice != other.jprice)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "HommeVo [jnum=" + jnum + ", jname=" + jname + ", jprice=" + jprice + ", nalja=" + nalja + "]";
	}
	
	
}
