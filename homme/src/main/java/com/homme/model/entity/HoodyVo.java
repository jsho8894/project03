package com.homme.model.entity;

public class HoodyVo {
	
	private int hnum;
	private String hname;
	private int hprice;
	private int hcount;
	
	public HoodyVo() {
		
	}

	public int getHnum() {
		return hnum;
	}

	public void setHnum(int hnum) {
		this.hnum = hnum;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public int getHprice() {
		return hprice;
	}

	public void setHprice(int hprice) {
		this.hprice = hprice;
	}

	public int getHcount() {
		return hcount;
	}

	public void setHcount(int hcount) {
		this.hcount = hcount;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + hcount;
		result = prime * result + ((hname == null) ? 0 : hname.hashCode());
		result = prime * result + hnum;
		result = prime * result + hprice;
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
		HoodyVo other = (HoodyVo) obj;
		if (hcount != other.hcount)
			return false;
		if (hname == null) {
			if (other.hname != null)
				return false;
		} else if (!hname.equals(other.hname))
			return false;
		if (hnum != other.hnum)
			return false;
		if (hprice != other.hprice)
			return false;
		return true;
	}

	public HoodyVo(int hnum, String hname, int hprice, int hcount) {
		super();
		this.hnum = hnum;
		this.hname = hname;
		this.hprice = hprice;
		this.hcount = hcount;
	}

	@Override
	public String toString() {
		return "HoodyVo [hnum=" + hnum + ", hname=" + hname + ", hprice=" + hprice + ", hcount=" + hcount + "]";
	}

}
