package quang.ph.pitchapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import quang.ph.pitchapp.entity.Pitch;
import quang.ph.pitchapp.handler.PitchImpl;

@Service
public class PitchService {
	
	@Autowired
	private PitchImpl pitchImpl;
	
	public List<Pitch> findAll() {
		List<Pitch> list = pitchImpl.findAll();
		return list;
	}
	
	public Pitch findById(long pitchId) {
		return pitchImpl.findById(pitchId);
	}
	
	public void save(Pitch pitch) {
		pitchImpl.save(pitch);
	}
	
	public void delete(Pitch pitch) {
		pitchImpl.delete(pitch);
	}
}
