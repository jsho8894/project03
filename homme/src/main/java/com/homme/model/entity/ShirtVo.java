package com.homme.model.entity;

public class ShirtVo {
	private int shnum;
	private String shname;
	private int shprice;
	private int shcount;

public ShirtVo() {
	
}

public int getShnum() {
	return shnum;
}

public void setShnum(int shnum) {
	this.shnum = shnum;
}

public String getShname() {
	return shname;
}

public void setShname(String shname) {
	this.shname = shname;
}

public int getShprice() {
	return shprice;
}

public void setShprice(int shprice) {
	this.shprice = shprice;
}

public int getShcount() {
	return shcount;
}

public void setShcount(int shcount) {
	this.shcount = shcount;
}

public ShirtVo(int shnum, String shname, int shprice, int shcount) {
	super();
	this.shnum = shnum;
	this.shname = shname;
	this.shprice = shprice;
	this.shcount = shcount;
}

@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + shcount;
	result = prime * result + ((shname == null) ? 0 : shname.hashCode());
	result = prime * result + shnum;
	result = prime * result + shprice;
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
	ShirtVo other = (ShirtVo) obj;
	if (shcount != other.shcount)
		return false;
	if (shname == null) {
		if (other.shname != null)
			return false;
	} else if (!shname.equals(other.shname))
		return false;
	if (shnum != other.shnum)
		return false;
	if (shprice != other.shprice)
		return false;
	return true;
}

@Override
public String toString() {
	return "ShirtVo [shnum=" + shnum + ", shname=" + shname + ", shprice=" + shprice + ", shcount=" + shcount + "]";
}

}