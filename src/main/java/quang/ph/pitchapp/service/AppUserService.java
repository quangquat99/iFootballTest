package quang.ph.pitchapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import quang.ph.pitchapp.entity.AppRole;
import quang.ph.pitchapp.entity.AppUser;
import quang.ph.pitchapp.entity.Pitch;
import quang.ph.pitchapp.entity.UserRole;
import quang.ph.pitchapp.handler.AppRoleImpl;
import quang.ph.pitchapp.handler.AppUserImpl;
import quang.ph.pitchapp.handler.PitchImpl;
import quang.ph.pitchapp.handler.UserRoleImpl;

@Service
public class AppUserService {

	@Autowired
	private AppUserImpl appUserImpl;
	
	@Autowired
	private AppRoleImpl appRoleImpl;
	
	@Autowired
	private UserRoleImpl userRoleImpl;
	
	@Autowired
	private PitchImpl pitchImpl;
	
	// Config in WebSecurityConfig
	@Autowired
	private PasswordEncoder passwordEncoder;

	public List<AppUser> findAll() {
		return appUserImpl.findAll();
	}

	public AppUser findById(long userId) {
		return appUserImpl.findById(userId);
	}

	public void save(AppUser appUser) {
		String encrytedPassword = passwordEncoder.encode(appUser.getEncrytedPassword());
		appUser.setEncrytedPassword(encrytedPassword);
		appUser.setEnabled(true);
		appUserImpl.save(appUser);
		
		// save user_role
		setUserIdForUserRole(appUser);
	}
	
	public void delete(AppUser appUser) {
		appUserImpl.delete(appUser);
	}

	public AppUser findUserAccount(String userName) {
		return appUserImpl.findUserAccount(userName);
	}
	
	public void setUserIdForUserRole(AppUser appUser) {
		Long roleId = 2l;
		AppRole appRole = appRoleImpl.findById(roleId);
		UserRole userRole = new UserRole();
		userRole.setAppUser(appUser);
		userRole.setAppRole(appRole);
		userRoleImpl.save(userRole);
	}
}
