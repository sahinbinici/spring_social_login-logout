package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.social.security.SocialUserDetails;
import org.springframework.social.security.SocialUserDetailsService;
import org.springframework.stereotype.Service;

import dao.MyUserAccountDAO;
import model.MyUserAccount;
import user.MySocialUserDetails;
@Service
public class MySocialUserDetailsService implements SocialUserDetailsService{

	@Autowired
	private MyUserAccountDAO myUserAccountDAO;
	@Override
	public SocialUserDetails loadUserByUserId(String userId) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		MyUserAccount account=myUserAccountDAO.findById(userId);
		MySocialUserDetails userDetails=new MySocialUserDetails(account);
		return userDetails;
	}

}
