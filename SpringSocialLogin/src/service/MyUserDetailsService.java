package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.social.security.SocialUserDetails;
import org.springframework.stereotype.Service;

import dao.MyUserAccountDAO;
import model.MyUserAccount;
import user.MySocialUserDetails;


//Service to Get user info from Database.
@Service
public class MyUserDetailsService implements UserDetailsService{

	@Autowired
	private MyUserAccountDAO myUserAccountDAO;
	
	public MyUserDetailsService(){
		
	}
	
	// (This method is used by Spring Security API)
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		MyUserAccount myUserAccount=myUserAccountDAO.findByUserName(username);
		
		SocialUserDetails prensip=new MySocialUserDetails(myUserAccount);
		return prensip;
	}

	
	
}
