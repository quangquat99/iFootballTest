package quang.ph.pitchapp.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "App_User", //
		uniqueConstraints = { //
				@UniqueConstraint(name = "APP_USER_UK", columnNames = "User_Name") })
public class AppUser {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "User_Id", nullable = false)
	private Long userId;

	@Column(name = "User_Name", length = 36, nullable = false)
	private String userName;
	
	@Column(name = "email", length = 100, nullable = false)
	private String email;

	@Column(name = "Encryted_Password", length = 128, nullable = false)
	private String encrytedPassword;

	@Column(name = "Enabled", length = 1, nullable = false)
	private boolean enabled;

	@OneToMany(mappedBy = "appUser")
	private List<Pitch> pitchs;
	
	
	
	public AppUser() {
		super();
	}

	public AppUser(Long userId, String userName, String email, List<Pitch> pitchs) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.email = email;
		this.pitchs = pitchs;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEncrytedPassword() {
		return encrytedPassword;
	}

	public void setEncrytedPassword(String encrytedPassword) {
		this.encrytedPassword = encrytedPassword;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

}
