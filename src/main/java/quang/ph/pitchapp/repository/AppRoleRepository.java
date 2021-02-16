package quang.ph.pitchapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import quang.ph.pitchapp.entity.AppRole;

@Repository
public interface AppRoleRepository extends JpaRepository<AppRole, Long> {
	
}
