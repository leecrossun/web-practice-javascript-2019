package jspbook.pr45;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class AddrManager {
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	List<AddrBean> addrGrouplist = new ArrayList<AddrBean>();
	
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}
	public void addGrouping(AddrBean ab) {
		addrGrouplist.add(ab);
	}
	public List<AddrBean> getAddrList(){
		return addrlist;
	}
	public List<AddrBean> getAddrGroupList(){
		Comparator<AddrBean> reverse = Comparator.comparing(AddrBean::getGroup).reversed();
		addrGrouplist.sort(Comparator.comparing(AddrBean::getUsername).thenComparing(reverse)
		        .thenComparing(AddrBean::getTel).thenComparing(AddrBean::getEmail)
		        .thenComparing(AddrBean::getSex));

		return addrGrouplist;
	}
	
	public AddrBean getAddr(String group) {
		for(AddrBean ab : addrGrouplist) {
			if(ab.getGroup().equals(group))
				return ab;
		}
		return null;
	}
}
