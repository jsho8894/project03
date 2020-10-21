package com.homme.model.entity;

public class SlacksVo {
	private int snum;
	private String sname;
	private int sprice;
	private int scount;
	
	public SlacksVo() {}
	
	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getSprice() {
		return sprice;
	}
	public void setSprice(int sprice) {
		this.sprice = sprice;
	}
	public int getScount() {
		return scount;
	}
	public void setScount(int scount) {
		this.scount = scount;
	}

	public SlacksVo(int snum, String sname, int sprice, int scount) {
		super();
		this.snum = snum;
		this.sname = sname;
		this.sprice = sprice;
		this.scount = scount;
	}

	@Override
	public String toString() {
		return "SlacksVo [snum=" + snum + ", sname=" + sname + ", sprice=" + sprice + ", scount=" + scount + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + scount;
		result = prime * result + ((sname == null) ? 0 : sname.hashCode());
		result = prime * result + snum;
		result = prime * result + sprice;
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
		SlacksVo other = (SlacksVo) obj;
		if (scount != other.scount)
			return false;
		if (sname == null) {
			if (other.sname != null)
				return false;
		} else if (!sname.equals(other.sname))
			return false;
		if (snum != other.snum)
			return false;
		if (sprice != other.sprice)
			return false;
		return true;
	}
	
	
	
}