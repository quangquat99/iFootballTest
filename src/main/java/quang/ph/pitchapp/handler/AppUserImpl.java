package quang.ph.pitchapp.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import quang.ph.pitchapp.entity.AppUser;
import quang.ph.pitchapp.repository.AppUserRepository;

@Repository
@Transactional
public class AppUserImpl {

	@Autowired
	AppUserRepository appUserRepository;

	public List<AppUser> findAll() {
		try {
			return appUserRepository.findAll();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}

	}

	public AppUser findById(Long id) {
		try {
			AppUser appUser = appUserRepository.findById(id).get();
			return appUser;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}
	}

	public void save(AppUser appUser) {
		try {
			appUserRepository.save(appUser);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	public void delete(AppUser appUser) {
		try {
			appUserRepository.delete(appUser);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	public AppUser findUserAccount(String userName) {
		try {
			AppUser appUser = new AppUser();
			List<AppUser> list =  appUserRepository.findAll();
			for (AppUser user : list ) {
				if (userName.equals(user.getUserName())) {
					appUser = user;
				}
			}
			return appUser;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
