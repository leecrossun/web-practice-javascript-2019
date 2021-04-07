package jspbook.pr44;
import java.util.*;
public class AddrManager {
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	
	public void add(AddrBean ab)
	{
		addrlist.add(ab);
	}
	
	public List<AddrBean> getAddrList() 
	{
		return addrlist;
	}
	
	public AddrBean getAddr(String username)
	{
		for (AddrBean ab : addrlist)
			if (ab.getUsername().equals(username))
				return ab;
		return null;
	}
}
