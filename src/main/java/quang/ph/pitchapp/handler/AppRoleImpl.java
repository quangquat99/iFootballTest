package quang.ph.pitchapp.handler;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import quang.ph.pitchapp.entity.AppRole;
import quang.ph.pitchapp.repository.AppRoleRepository;

@Repository
@Transactional
public class AppRoleImpl {
	
	@Autowired
	AppRoleRepository appRoleRepository;
	
	public List<AppRole> findAll() {
		try {
			return appRoleRepository.findAll();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}
		
	}
	
	public AppRole findById(Long id) {
		try {
			AppRole appRole = appRoleRepository.findById(id).get();
			return appRole;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}
	}
	
	public void save(AppRole appRole) {
		try {
			appRoleRepository.save(appRole);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}
	
	public void delete(AppRole appRole) {

		try {
			appRoleRepository.delete(appRole);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}
	
	public List<String> getRoleNames(Long userId) {
		try {
			List<String> listRoleNames = new ArrayList<String>();
			
			List<AppRole> lst = appRoleRepository.findAll();
			for (AppRole appRole : lst) {
				if (userId == appRole.getRoleId()) {
					listRoleNames.add(appRole.getRoleName());
				}
			}
	        return listRoleNames; 
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}
    }
}
