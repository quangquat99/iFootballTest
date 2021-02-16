package quang.ph.pitchapp.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import quang.ph.pitchapp.entity.AppUser;
import quang.ph.pitchapp.entity.Pitch;
import quang.ph.pitchapp.service.AppUserService;
import quang.ph.pitchapp.service.PitchService;

@Controller
public class PitchController {

	@Autowired
	private PitchService pitchService;

	@Autowired
	private AppUserService appUserService;

	@Autowired
	JavaMailSender javaMailSender;

	@RequestMapping(value = "/pitch", method = RequestMethod.GET)
	public String pitchPage(Model model, Principal principal) {

		List<Pitch> listPitch = pitchService.findAll();
		model.addAttribute("listPitch", listPitch);

		AppUser appUser = new AppUser();
		if (principal != null) {
			User loginedUser = (User) ((Authentication) principal).getPrincipal();
			appUser = appUserService.findUserAccount(loginedUser.getUsername());
		}
		model.addAttribute("appUserId", appUser.getUserId());

		return "pitch";
	}

	@RequestMapping(value = "/bookpitch", method = RequestMethod.GET)
	public String bookPitch(Model model, Principal principal, @RequestParam("id") Long pitchId,
			@RequestParam("userId") Long userId) {
		Pitch pitch = pitchService.findById(pitchId);
		AppUser userBookPitch = appUserService.findById(userId);
		pitch.setAppUser(userBookPitch);
		pitchService.save(pitch);

		// TODO
		// Create a Simple MailMessage.
		SimpleMailMessage message = new SimpleMailMessage();

		message.setTo(userBookPitch.getEmail());
		message.setSubject("ĐẶT SÂN THÀNH CÔNG");
		message.setText("Bạn đã đặt sân bóng thành công!!!");

		// Send Message!
		javaMailSender.send(message);

		return "redirect:/pitch";
	}

	@RequestMapping(value = "/detailpitch{id}", method = RequestMethod.GET)
	public String pitchDetail(Model model, Principal principal, @RequestParam("id") Long pitchId) {
		Pitch pitch = pitchService.findById(pitchId);
		model.addAttribute("pitch", pitch);
		return "/pitch//detailpitch";
	}

	@RequestMapping(value = "/addpitch")
	public String addPitch(Model model, Principal principal) {
		model.addAttribute("pitch", new Pitch());
		return "/pitch//addpitch";
	}

	@RequestMapping(value = "/editpitch{id}", method = RequestMethod.GET)
	public String editPitch(Model model, Principal principal, @RequestParam("id") Long pitchId) {
		Pitch pitch = pitchService.findById(pitchId);
		model.addAttribute("pitch", pitch);
		return "/pitch//editpitch";
	}

	@RequestMapping(value = "/deletepitch{id}", method = RequestMethod.GET)
	public String deletePitch(Model model, Principal principal, @RequestParam("id") Long pitchId) {

		// TODO
		Pitch pitch = pitchService.findById(pitchId);
		pitchService.delete(pitch);
		return "redirect:/pitch";
	}

	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String savePitch(@Validated @RequestBody Pitch pitch) {
		pitchService.save(pitch);
		return "redirect:/pitch";
	}

}
