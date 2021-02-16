package quang.ph.pitchapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import quang.ph.pitchapp.entity.UserRole;

@Repository
public interface UserRoleRepository extends JpaRepository<UserRole, Long> {

}
