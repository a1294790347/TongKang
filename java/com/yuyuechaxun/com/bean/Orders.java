package com.yuyuechaxun.com.bean;


public class Orders {
    private Integer orid;
    private Integer goid;
    private Integer usid;
    private String ortimes;
    private String orname;
    private String orbirth;
    private String orphone;
    private String orstate;
	public Integer getOrid() {
		return orid;
	}
	public void setOrid(Integer orid) {
		this.orid = orid;
	}
	public Integer getGoid() {
		return goid;
	}
	public void setGoid(Integer goid) {
		this.goid = goid;
	}
	public Integer getUsid() {
		return usid;
	}
	public void setUsid(Integer usid) {
		this.usid = usid;
	}
	public String getOrtimes() {
		return ortimes;
	}
	public void setOrtimes(String ortimes) {
		this.ortimes = ortimes;
	}
	public String getOrname() {
		return orname;
	}
	public void setOrname(String orname) {
		this.orname = orname;
	}
	public String getOrbirth() {
		return orbirth;
	}
	public void setOrbirth(String orbirth) {
		this.orbirth = orbirth;
	}
	public String getOrphone() {
		return orphone;
	}
	public void setOrphone(String orphone) {
		this.orphone = orphone;
	}
	public String getOrstate() {
		return orstate;
	}
	public void setOrstate(String orstate) {
		this.orstate = orstate;
	}
	@Override
	public String toString() {
		return "Orders [orid=" + orid + ", goid=" + goid + ", usid=" + usid
				+ ", ortimes=" + ortimes + ", orname=" + orname + ", orbirth="
				+ orbirth + ", orphone=" + orphone + ", orstate=" + orstate
				+ "]";
	}

    
}
