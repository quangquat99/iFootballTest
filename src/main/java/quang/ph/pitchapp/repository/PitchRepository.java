package quang.ph.pitchapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import quang.ph.pitchapp.entity.Pitch;

public interface PitchRepository extends JpaRepository<Pitch, Long> {

}
