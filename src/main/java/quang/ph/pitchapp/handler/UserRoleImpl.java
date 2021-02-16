package quang.ph.pitchapp.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import quang.ph.pitchapp.entity.UserRole;
import quang.ph.pitchapp.repository.UserRoleRepository;

@Repository
@Transactional
public class UserRoleImpl {
	
	@Autowired
	UserRoleRepository userRoleRepository;

	public List<UserRole> findAll() {
		try {
			return userRoleRepository.findAll();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}

	}

	public UserRole findById(Long id) {
		try {
			UserRole userRole  = userRoleRepository.findById(id).get();
			return userRole;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}
	}

	public void save(UserRole userRole) {
		try {
			userRoleRepository.save(userRole);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	public void delete(UserRole userRole) {
		try {
			userRoleRepository.delete(userRole);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}
}
