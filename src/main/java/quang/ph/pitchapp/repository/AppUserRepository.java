package quang.ph.pitchapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import quang.ph.pitchapp.entity.AppUser;

@Repository
public interface AppUserRepository extends JpaRepository<AppUser, Long> {

}
