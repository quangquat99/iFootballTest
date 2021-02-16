package quang.ph.pitchapp.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "pitch", //
		uniqueConstraints = { //
				@UniqueConstraint(name = "PITCH_UK", columnNames = { "pitch_id", "name" }) })
public class Pitch {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "pitch_id", nullable = false)
	private Long pitchId;

	@Column(name = "name", length = 30, nullable = false)
	private String name;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	private AppUser appUser;

	public Pitch() {
		super();
	}

	public Pitch(Long pitchId, String name, AppUser appUser) {
		this.pitchId = pitchId;
		this.name = name;
		this.appUser = appUser;
	}

	public Long getPitchId() {
		return pitchId;
	}

	public void setPitchId(Long pitchId) {
		this.pitchId = pitchId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public AppUser getAppUser() {
		return appUser;
	}

	public void setAppUser(AppUser appUser) {
		this.appUser = appUser;
	}

}
