package quang.ph.pitchapp.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import quang.ph.pitchapp.entity.Pitch;
import quang.ph.pitchapp.repository.PitchRepository;

@Repository
@Transactional
public class PitchImpl {

	@Autowired
	PitchRepository pitchRepository;

	public List<Pitch> findAll() {
		try {
			return pitchRepository.findAll();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}

	}
	
	public Pitch findById(Long id) {
		try {
			Pitch pitch = pitchRepository.findById(id).get();
			return pitch;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}
	}

	public void save(Pitch pitch) {
		try {
			pitchRepository.save(pitch);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	public void delete(Pitch pitch) {
		try {
			pitchRepository.delete(pitch);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}
}
