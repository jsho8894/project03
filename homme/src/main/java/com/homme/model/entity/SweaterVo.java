package com.homme.model.entity;

public class SweaterVo {
	private int swnum;
	private String swname;
	private int swprice;
	private int swcount;

	
	public SweaterVo() {
		
	}


	public int getSwnum() {
		return swnum;
	}


	public void setSwnum(int swnum) {
		this.swnum = swnum;
	}


	public String getSwname() {
		return swname;
	}


	public void setSwname(String swname) {
		this.swname = swname;
	}


	public int getSwprice() {
		return swprice;
	}


	public void setSwprice(int swprice) {
		this.swprice = swprice;
	}


	public int getSwcount() {
		return swcount;
	}


	public void setSwcount(int swcount) {
		this.swcount = swcount;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + swcount;
		result = prime * result + ((swname == null) ? 0 : swname.hashCode());
		result = prime * result + swnum;
		result = prime * result + swprice;
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
		SweaterVo other = (SweaterVo) obj;
		if (swcount != other.swcount)
			return false;
		if (swname == null) {
			if (other.swname != null)
				return false;
		} else if (!swname.equals(other.swname))
			return false;
		if (swnum != other.swnum)
			return false;
		if (swprice != other.swprice)
			return false;
		return true;
	}


	public SweaterVo(int swnum, String swname, int swprice, int swcount) {
		super();
		this.swnum = swnum;
		this.swname = swname;
		this.swprice = swprice;
		this.swcount = swcount;
	}


	@Override
	public String toString() {
		return "SweaterVo [swnum=" + swnum + ", swname=" + swname + ", swprice=" + swprice + ", swcount=" + swcount
				+ "]";
	}
	
}
