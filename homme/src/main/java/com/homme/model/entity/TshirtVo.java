package com.homme.model.entity;

public class TshirtVo {
	private int tnum;
	private String tname;
	private int tprice;
	private int tcount;

public TshirtVo() {
	
}

public int getTnum() {
	return tnum;
}

public void setTnum(int tnum) {
	this.tnum = tnum;
}

public String getTname() {
	return tname;
}

public void setTname(String tname) {
	this.tname = tname;
}

public int getTprice() {
	return tprice;
}

public void setTprice(int tprice) {
	this.tprice = tprice;
}

public int getTcount() {
	return tcount;
}

public void setTcount(int tcount) {
	this.tcount = tcount;
}

@Override
public String toString() {
	return "TshirtVo [tnum=" + tnum + ", tname=" + tname + ", tprice=" + tprice + ", tcount=" + tcount + "]";
}

public TshirtVo(int tnum, String tname, int tprice, int tcount) {
	super();
	this.tnum = tnum;
	this.tname = tname;
	this.tprice = tprice;
	this.tcount = tcount;
}

@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + tcount;
	result = prime * result + ((tname == null) ? 0 : tname.hashCode());
	result = prime * result + tnum;
	result = prime * result + tprice;
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
	TshirtVo other = (TshirtVo) obj;
	if (tcount != other.tcount)
		return false;
	if (tname == null) {
		if (other.tname != null)
			return false;
	} else if (!tname.equals(other.tname))
		return false;
	if (tnum != other.tnum)
		return false;
	if (tprice != other.tprice)
		return false;
	return true;
}

}
