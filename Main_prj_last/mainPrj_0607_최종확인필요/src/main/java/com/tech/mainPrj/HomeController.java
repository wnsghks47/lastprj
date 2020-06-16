package com.tech.mainPrj;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.*;
import com.tech.mainPrj.dao.IDao;
import com.tech.mainPrj.dto.ChartInfo;
import com.tech.mainPrj.dto.Event;
import com.tech.mainPrj.dto.LikeOrDislike;
import com.tech.mainPrj.dto.MemberDto;
import com.tech.mainPrj.dto.PageVO;
import com.tech.mainPrj.dto.ProductInfo;
import com.tech.mainPrj.dto.ProductIngredient;
import com.tech.mainPrj.dto.ProductPrice;
import com.tech.mainPrj.dto.ProductTag;
import com.tech.mainPrj.dto.Replyqna;
import com.tech.mainPrj.dto.Replyqna1;
import com.tech.mainPrj.dto.ReviewInfo;
import com.tech.mainPrj.dto.Wish;
import com.tech.mainPrj.service.memberservice;
import com.tech.mainPrj.service.sha256;
import com.tech.mainPrj.util.CalcAge;
import com.tech.mainPrj.util.ChartJson;
import com.tech.mainPrj.util.DeleteImg;
import com.tech.mainPrj.util.LodJson;
import com.tech.mainPrj.util.MemberListJson;
import com.tech.mainPrj.util.ReviewListJson;
import com.tech.mainPrj.util.WishJson;

@Controller
public class HomeController {

	@Autowired
	private memberservice service;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/")
	public String MainView(Model model) {

		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<ProductInfo> first_top3 = dao.Top3("스킨/토너");
		ArrayList<ProductInfo> second_top3 = dao.Top3("로션/에멀젼");
		ArrayList<ProductInfo> third_top3 = dao.Top3("에센스/세럼");

		model.addAttribute("first_top3", first_top3);
		model.addAttribute("second_top3", second_top3);
		model.addAttribute("third_top3", third_top3);

		return "MainView";
	}

	@RequestMapping(value = "DetailView")
	public String DetailView(HttpServletRequest request, Model model) {
		String n = request.getParameter("pnumber");
		int pnumber = Integer.parseInt(n);

		IDao dao = sqlSession.getMapper(IDao.class);
		ProductInfo detail = dao.getDetail(pnumber);
		ProductPrice price = dao.getPrice(pnumber);
		ArrayList<ProductTag> tags = dao.getTag(pnumber);
		ArrayList<ProductIngredient> ingredients = dao.getIngredient(pnumber);
		ArrayList<ProductIngredient> dangers = dao.getDanger(pnumber);
		ArrayList<ReviewInfo> review = dao.reviewList(pnumber, 1, 2, "%", "|", "|");

		model.addAttribute("detail", detail);
		model.addAttribute("price", price);
		model.addAttribute("tags", tags);
		model.addAttribute("ingredients", ingredients);
		model.addAttribute("dangers", dangers);
		model.addAttribute("reviewList", review);

		return "DetailView";
	}

	@RequestMapping(value = "MyPage")
	public String MyPage(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();

		MemberDto dto = (MemberDto) session.getAttribute("member");

		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<ReviewInfo> data = dao.getReviewById(dto.getId());

		model.addAttribute("list", data);

		return "MyPage";
	}

	@RequestMapping(value = "ListView")
	public String ListView(HttpServletRequest request, Model model) {
		String[] c_list = { "스킨/토너", "로션/에멀젼", "에센스/세럼", "크림", "올인원", "마스크/팩", "선크림" };

		String c = request.getParameter("c");
		int index = Integer.parseInt(c) - 1;

		String order = request.getParameter("order");

		String category = c_list[index];

		int from = 0;
		int to = 10000000;

		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<ProductInfo> list = dao.byCategory(category, 1, 4, order, "%", "|", "|", from, to);
		String most = dao.mostExpensive(category);

		model.addAttribute("list", list);
		model.addAttribute("category", category);
		model.addAttribute("most", most);
		model.addAttribute("order", order);
		model.addAttribute("c", c);

		return "ListView";
	}

	@RequestMapping(value = "WriteView")
	public String WriteView(HttpServletRequest request, Model model) {
		String n = request.getParameter("pnumber");

		model.addAttribute("pnumber", n);

		return "WriteView";
	}

	@RequestMapping(value = "WriteReview")
	public String WriteReview(HttpServletRequest request, Model model) throws Exception {

		String n = request.getParameter("pnumber");
		int pnumber = Integer.parseInt(n);

		String title = request.getParameter("title");
		String rating = request.getParameter("rating");
		String content = request.getParameter("content");

		CalcAge calcAge = new CalcAge();

		HttpSession session = request.getSession();

		MemberDto dto = (MemberDto) session.getAttribute("member");
		String Birth = dto.getBirth();

		String id = dto.getId();
		String age = calcAge.Calc(Birth);
		String gender = dto.getGender();
		String skin = dto.getSkintype();

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.insertReview(pnumber, title, rating, content, id, age, gender, skin);

		String average = dao.getAverage(pnumber);

		dao.updateScore(pnumber, average);

		return "redirect:/DetailView?pnumber=" + pnumber;
	}

	@RequestMapping(value = "requestObject", method = RequestMethod.GET)
	@ResponseBody
	public Object simpleWithObject(HttpServletRequest request, Model model) {
		JSONObject data = new JSONObject();

		JSONObject detail = new JSONObject();

		String r = request.getParameter("r");
		int rnumber = Integer.parseInt(r);

		IDao dao = sqlSession.getMapper(IDao.class);
		ReviewInfo info = dao.getrDetail(rnumber);

		Date date = info.getRdate();
		String rdate = new SimpleDateFormat("yyyy-MM-dd").format(date);

		detail.put("rnumber", info.getRnumber());
		detail.put("rtitle", info.getRtitle());
		detail.put("rscore", info.getRscore());
		detail.put("rcontent", info.getRcontent());
		detail.put("rid", info.getRid());
		detail.put("rage", info.getRage());
		detail.put("rskin", info.getRskin());
		detail.put("rdate", rdate);
		detail.put("rcontent", info.getRcontent());
		detail.put("rgender", info.getRgender());
		detail.put("rstep", info.getRstep());
		detail.put("rindent", info.getRindent());
		detail.put("rlike", info.getRlike());
		detail.put("rdislike", info.getRdislike());
		detail.put("pnumber", info.getPnumber());

		data.put("detail", detail);

		return data.toMap();
	}

	@RequestMapping(value = "requestReview", method = RequestMethod.GET)
	@ResponseBody
	public Object requestReview(@RequestParam(value = "age[]") List<String> ages,
			@RequestParam(value = "skin[]") List<String> skins, HttpServletRequest request) {
		String n = request.getParameter("n");
		int pnumber = Integer.parseInt(n);

		String s = request.getParameter("start");
		int start = Integer.parseInt(s);

		String e = request.getParameter("end");
		int end = Integer.parseInt(e);

		String gender = request.getParameter("gender");

		String age = "";

		for (int i = 0; i < ages.size(); i++) {

			if (i == ages.size() - 1) {
				age = age + ages.get(i);
			} else {
				age = age + ages.get(i) + "|";
			}
		}

		String skin = "";

		for (int i = 0; i < skins.size(); i++) {

			if (i == skins.size() - 1) {
				skin = skin + skins.get(i);
			} else {
				skin = skin + skins.get(i) + "|";
			}
		}

		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<ReviewInfo> review = dao.reviewList(pnumber, start, end, gender, age, skin);

		JSONObject list = new JSONObject();

		JSONArray array = new JSONArray();

		for (int i = 0; i < review.size(); i++) {

			JSONObject obj = new JSONObject();

			Date date = review.get(i).getRdate();
			String rdate = new SimpleDateFormat("yyyy-MM-dd").format(date);

			obj.put("rnumber", review.get(i).getRnumber());
			obj.put("rtitle", review.get(i).getRtitle());
			obj.put("rscore", review.get(i).getRscore());
			obj.put("rcontent", review.get(i).getRcontent());
			obj.put("rid", review.get(i).getRid());
			obj.put("rage", review.get(i).getRage());
			obj.put("rskin", review.get(i).getRskin());
			obj.put("rdate", rdate);
			obj.put("rcontent", review.get(i).getRcontent());
			obj.put("rgender", review.get(i).getRgender());
			obj.put("src", review.get(i).getSrc());
			obj.put("pnumber", review.get(i).getPnumber());

			array.put(obj);
		}

		list.put("c", pnumber);
		list.put("item", array);

		return list.toMap();
	}

	@RequestMapping(value = "requestList", method = RequestMethod.GET)
	@ResponseBody
	public Object requestList(@RequestParam(value = "age[]") List<String> ages,
			@RequestParam(value = "skin[]") List<String> skins, HttpServletRequest request) {

		String c = request.getParameter("c");
		String category = c.replace("/", "_");

		String s = request.getParameter("start");
		int start = Integer.parseInt(s);

		String e = request.getParameter("end");
		int end = Integer.parseInt(e);

		String order = request.getParameter("order");

		String gender = request.getParameter("gender");

		String age = "";

		for (int i = 0; i < ages.size(); i++) {

			if (i == ages.size() - 1) {
				age = age + ages.get(i);
			} else {
				age = age + ages.get(i) + "|";
			}
		}

		String skin = "";

		for (int i = 0; i < skins.size(); i++) {

			if (i == skins.size() - 1) {
				skin = skin + skins.get(i);
			} else {
				skin = skin + skins.get(i) + "|";
			}
		}

		String f = request.getParameter("from");
		int from = Integer.parseInt(f);

		String t = request.getParameter("to");
		int to = Integer.parseInt(t);

		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<ProductInfo> list = dao.byCategory(c, start, end, order, gender, age, skin, from, to);

		JSONObject jlist = new JSONObject();

		JSONArray array = new JSONArray();

		for (int i = 0; i < list.size(); i++) {

			JSONObject obj = new JSONObject();

			obj.put("pnumber", list.get(i).getPnumber());
			obj.put("pname", list.get(i).getPname());
			obj.put("pbrand", list.get(i).getPbrand());

			array.put(obj);

		}

		jlist.put("c", category);
		jlist.put("item", array);

		return jlist.toMap();

	}

	@RequestMapping(value = "uploadSummerImage", method = RequestMethod.POST)
	@ResponseBody
	public Object uploadSummernoteImageFile(HttpServletRequest request) {

		JSONObject jsonObject = new JSONObject();

		String attachPath = "resources\\img\\reviewImg\\";
		String uploadPath = request.getSession().getServletContext().getRealPath("/");
		String path = uploadPath + attachPath;

		MultipartRequest multi;
		try {

			multi = new MultipartRequest(request, path, 10 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());

			String name = multi.getFilesystemName("file");

			String url = "resources/img/reviewImg/" + name;

			jsonObject.put("url", url);

			return jsonObject.toMap();

		} catch (IOException e) {
			e.printStackTrace();

			jsonObject.put("url", "resources/img/fail.jpg");

			return jsonObject.toMap();
		}

	}

	@RequestMapping(value = "deleteReview", method = RequestMethod.GET)
	@ResponseBody
	public Object deleteReview(HttpServletRequest request) {
		JSONObject object = new JSONObject();

		String n = request.getParameter("n");
		int pnumber = Integer.parseInt(n);

		String r = request.getParameter("r");
		int rnumber = Integer.parseInt(r);

		IDao dao = sqlSession.getMapper(IDao.class);

		String content = dao.getReviewContent(rnumber);

		DeleteImg deleteImg = new DeleteImg();
		deleteImg.deleteImg(content, request);

		dao.deleteLoD(rnumber);
		dao.deleteReview(rnumber);

		String average = dao.getAverage(pnumber);

		if (average == null) {
			average = "0";
		}

		int reviewCount = dao.reviewCount(pnumber);
		String rCount = Integer.toString(reviewCount);

		dao.updateScore(pnumber, average);
		object.put("score", average);
		object.put("count", rCount);

		return object.toMap();
	}

	@RequestMapping(value = "ModifyView")
	public String ModifyView(HttpServletRequest request, Model model) {

		String n = request.getParameter("n");
		int pnumber = Integer.parseInt(n);

		String r = request.getParameter("r");
		int rnumber = Integer.parseInt(r);

		model.addAttribute("rnumber", rnumber);
		model.addAttribute("pnumber", pnumber);

		return "ModifyView";
	}

	@RequestMapping(value = "ModifyReview")
	public String ModifyReview(HttpServletRequest request) {

		String n = request.getParameter("pnumber");
		int pnumber = Integer.parseInt(n);

		String r = request.getParameter("rnumber");
		int rnumber = Integer.parseInt(r);

		String title = request.getParameter("title");
		String rating = request.getParameter("rating");
		String content = request.getParameter("content");
		String date = request.getParameter("rdate");
		Date rdate = Date.valueOf(date);

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.modifyReview(rnumber, title, rating, content, rdate);

		String average = dao.getAverage(pnumber);

		dao.updateScore(pnumber, average);

		return "redirect:/DetailView?pnumber=" + pnumber;
	}

	@RequestMapping(value = "ModifyEvent")
	public String ModifyEvent(HttpServletRequest request, Model model) {

		String e = request.getParameter("e");

		model.addAttribute("enumber", e);

		return "ModifyEvent";
	}

	@RequestMapping(value = "requestEvent", method = RequestMethod.GET)
	@ResponseBody
	public Object requestEvent(HttpServletRequest request) {

		String enumber = request.getParameter("e");

		IDao dao = sqlSession.getMapper(IDao.class);
		Event data = dao.event(enumber);

		JSONObject obj = new JSONObject();

		obj.put("enumber", data.getEnumber());
		obj.put("etitle", data.getEtitle());
		obj.put("estartdate", data.getEstartdate());
		obj.put("eenddate", data.getEenddate());
		obj.put("eventimg", data.getEventimg());

		return obj.toMap();
	}

	@RequestMapping(value = "updateEvent")
	public String updateEvent(HttpServletRequest request, Model model) {

		String enumber = request.getParameter("enumber");
		String title = request.getParameter("title");
		String startdate = request.getParameter("startdate");
		String enddate = request.getParameter("enddate");
		String content = request.getParameter("content");

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.updateEvent(enumber, title, startdate, enddate, content);

		return "redirect:ControlEvent";
	}

	@RequestMapping(value = "SearchView", method = RequestMethod.POST)
	public String SearchView(HttpServletRequest request, Model model) {
		String s = request.getParameter("search");
		String search = "%" + s + "%";
		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<ProductInfo> list = dao.searchList(search, 1, 4);

		model.addAttribute("list", list);
		model.addAttribute("search", s);

		return "SearchView";
	}

	@RequestMapping(value = "requestSearch", method = RequestMethod.GET)
	@ResponseBody
	public Object requestSearch(HttpServletRequest request) {

		String sch = request.getParameter("search");
		String search = "%" + sch + "%";

		String s = request.getParameter("start");
		int start = Integer.parseInt(s);

		String e = request.getParameter("end");
		int end = Integer.parseInt(e);

		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<ProductInfo> list = dao.searchList(search, start, end);

		JSONObject jlist = new JSONObject();

		JSONArray array = new JSONArray();

		for (int i = 0; i < list.size(); i++) {

			JSONObject obj = new JSONObject();

			obj.put("pnumber", list.get(i).getPnumber());
			obj.put("pname", list.get(i).getPname());
			obj.put("pbrand", list.get(i).getPbrand());

			String category = list.get(i).getPcategory().replace("/", "_");

			obj.put("pcategory", category);

			array.put(obj);

		}

		jlist.put("item", array);

		return jlist.toMap();

	}

	@RequestMapping(value = "insertResponse", method = RequestMethod.GET)
	@ResponseBody
	public Object insertResponse(HttpServletRequest request) throws Exception {
		String n = request.getParameter("pnumber");
		int pnumber = Integer.parseInt(n);
		String resContent = request.getParameter("resContent");
		String rnumber = request.getParameter("resRnumber");
		int resRnumber = Integer.parseInt(rnumber);
		String rstep = request.getParameter("resRstep");
		int resRstep = Integer.parseInt(rstep) + 1;
		String rindent = request.getParameter("resRindent");
		int resRindent = Integer.parseInt(rindent) + 1;
		String s = request.getParameter("start");
		int start = Integer.parseInt(s);
		String e = request.getParameter("end");
		int end = Integer.parseInt(e);

		CalcAge calcAge = new CalcAge();

		HttpSession session = request.getSession();

		MemberDto dto = (MemberDto) session.getAttribute("member");
		String Birth = dto.getBirth();

		String id = dto.getId();
		String age = calcAge.Calc(Birth);
		String gender = dto.getGender();
		String skin = dto.getSkintype();

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.updateStep(resRnumber, rstep);
		dao.insertResponse(pnumber, resContent, resRnumber, resRstep, resRindent, id, age, gender, skin);

		ArrayList<ReviewInfo> list = dao.searchResponse(resRnumber, start, end);

		JSONObject jlist = new JSONObject();

		JSONArray array = new JSONArray();

		for (int i = 0; i < list.size(); i++) {

			JSONObject obj = new JSONObject();

			Date date = list.get(i).getRdate();
			String rdate = new SimpleDateFormat("yyyy-MM-dd").format(date);

			obj.put("rid", list.get(i).getRid());
			obj.put("rgroup", list.get(i).getRgroup());
			obj.put("rstep", list.get(i).getRstep());
			obj.put("rdate", rdate);
			obj.put("rindent", list.get(i).getRindent());
			obj.put("rcontent", list.get(i).getRcontent());
			obj.put("rgender", list.get(i).getRgender());
			obj.put("rnumber", list.get(i).getRnumber());

			array.put(obj);

		}

		jlist.put("item", array);

		return jlist.toMap();
	}

	@RequestMapping(value = "deleteResponse", method = RequestMethod.GET)
	@ResponseBody
	public String deleteResponse(HttpServletRequest request) {
		String resNumber = request.getParameter("resRnumber");
		int rnumber = Integer.parseInt(resNumber);

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deleteReview(rnumber);

		return "댓글이 삭제되었습니다.";
	}

	@RequestMapping(value = "ControlReview")
	public String ControlView(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();
		MemberDto dto = (MemberDto) session.getAttribute("member");

		if (dto.getAuthority() == 0) {

			SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
			Calendar cal = new GregorianCalendar(Locale.KOREA);
			cal.setTime(new java.util.Date());
			String toDate = fm.format(cal.getTime());
			cal.add(Calendar.MONTH, -1);
			String fromDate = fm.format(cal.getTime());

			model.addAttribute("fromDate", fromDate);
			model.addAttribute("toDate", toDate);

			return "ControlReview";

		} else {

			return "redirect:/";

		}

	}

	@RequestMapping(value = "reviewChart", method = RequestMethod.GET)
	@ResponseBody
	public Object reviewChart(HttpServletRequest request) {
		String from = request.getParameter("from");
		String to = request.getParameter("to");

		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<ChartInfo> data = dao.getReviewChart(from, to);
		ArrayList<Integer> pieAge = dao.getPieAge(from, to);
		ArrayList<Integer> pieGender = dao.getPieGender(from, to);
		ArrayList<Integer> pieSkin = dao.getPieSkin(from, to);

		ChartJson json = new ChartJson();

		JSONObject obj = json.json(data, pieAge, pieGender, pieSkin);

		return obj.toMap();
	}

	@RequestMapping(value = "reviewChartList", method = RequestMethod.GET)
	@ResponseBody
	public Object reviewChartList(HttpServletRequest request) {
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		String start = request.getParameter("start");
		String end = request.getParameter("end");

		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<ReviewInfo> data = dao.getReviewList(from, to, start, end);
		int dataCount = dao.getReviewListCnt(from, to);

		JSONObject obj = new ReviewListJson().json(data);
		obj.put("dataCount", dataCount);

		return obj.toMap();
	}

	@RequestMapping(value = "requestResponse", method = RequestMethod.GET)
	@ResponseBody
	public Object requestResponse(HttpServletRequest request) {
		JSONObject data = new JSONObject();

		String r = request.getParameter("r");
		int rnumber = Integer.parseInt(r);

		String s = request.getParameter("start");
		int start = Integer.parseInt(s);

		String e = request.getParameter("end");
		int end = Integer.parseInt(e);

		JSONArray responseArray = new JSONArray();

		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<ReviewInfo> list = dao.searchResponse(rnumber, start, end);

		for (int i = 0; i < list.size(); i++) {

			JSONObject obj = new JSONObject();

			Date d = list.get(i).getRdate();
			String resdate = new SimpleDateFormat("yyyy-MM-dd").format(d);

			obj.put("rid", list.get(i).getRid());
			obj.put("rgroup", list.get(i).getRgroup());
			obj.put("rstep", list.get(i).getRstep());
			obj.put("rdate", resdate);
			obj.put("rindent", list.get(i).getRindent());
			obj.put("rcontent", list.get(i).getRcontent());
			obj.put("rgender", list.get(i).getRgender());
			obj.put("rnumber", list.get(i).getRnumber());

			responseArray.put(obj);

		}

		data.put("list", responseArray);

		return data.toMap();
	}

	// 로그인 관련 시작

	@RequestMapping("Login")
	public String loginview(HttpServletRequest request) {

		HttpSession session = request.getSession();

		MemberDto dto = (MemberDto) session.getAttribute("member");

		if (dto != null) {

			if (dto.getAuthority() == 0) {

				return "ControlMember";

			} else if (dto.getAuthority() == 1) {

				return "redirect:MyPage";

			} else {

				return "Login";

			}

		} else {

			return "Login";
		}

	}

	@RequestMapping("Agree")
	public String agreement() {

		return "Agree";
	}

	@RequestMapping("Register")
	public String Register() {

		return "Register";
	}

	@RequestMapping("MyInfo")
	public String MyInfo(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();

		MemberDto dto = (MemberDto) session.getAttribute("member");
		model.addAttribute("m", dto);

		return "MyInfo";
	}

	@RequestMapping(value = "updateInfo", method = RequestMethod.POST)
	public String updateInfo(HttpServletRequest request, Model model, HttpSession session) {

		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String pw = sha256.encrypt(pass);
		String mail = request.getParameter("mail");
		String phone = request.getParameter("phone");
		String skintype = request.getParameter("skintype");
		System.out.println(id);
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.updateinfo(id, pw, mail, phone, skintype);

		session.invalidate();

		return "Login";
	}

	@RequestMapping(value = "registergo", method = RequestMethod.POST)
	public String register(MemberDto dto, Model model, HttpServletRequest request) throws Exception {

		String mail = request.getParameter("mail");

		String pw = sha256.encrypt(dto.getPass());
		dto.setPass(pw);

		service.register(dto);
		model.addAttribute("mail", mail);

		return "mailverify";// 메일 인증시작
	}

	@RequestMapping(value = "mailverify")
	public String mailverify() {

		return "mailverify";// 메일인증화면

	}

	@RequestMapping("verifycheck") // 메일인증보내기
	public ModelAndView verifygo(HttpServletRequest request, HttpServletResponse response) throws IOException {

		Random r = new Random();
		int dice = r.nextInt(4589362) + 49311; // 이메일로 받는 인증코드 부분 (난수)

		String setfrom = "yjsn1301@gamil.com";
		String tomail = request.getParameter("verify"); // 받는 사람 이메일
		String title = "회원가입 인증 이메일 입니다."; // 제목
		String content =

				"안녕하세요 회원님, 저희 홈페이지를 찾아주셔서 감사합니다" + " 인증번호는 " + dice + " 입니다. " + "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

		ModelAndView mv = new ModelAndView(); // ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
		mv.setViewName("verifygo"); // 뷰의이름
		mv.addObject("dice", dice);

		System.out.println("mv : " + mv);

		return mv;

	}

	@RequestMapping(value = "verifygo", method = RequestMethod.POST)
	public String verifygo() {

		return "verifygo";// 인증번호 확인화면

	}

	// 인증번호 비교
	@RequestMapping(value = "verify", method = RequestMethod.POST)
	public String verify(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {

		String verifycheck = request.getParameter("verifycheck");
		String dice = request.getParameter("dice");

		System.out.println(dice);
		System.out.println(verifycheck);

		if (dice.equals(verifycheck)) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response.getWriter();
			out_equals.println("<script>alert('인증번호가 일치하였습니다. 로그인창으로 이동합니다.');</script>");
			out_equals.flush();
			System.out.println("인증성공");
			return "Login";
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response.getWriter();
			out_equals.println("<script>alert('인증번호가 일치하지않습니다. 다시 확인해주세요.');</script>");
			out_equals.flush();
			System.out.println("인증실패");
			model.addAttribute("dice", dice);
			return "verifygo";
		}

	}

	@RequestMapping(value = "logingo", method = RequestMethod.POST)
	public String logingo(HttpServletRequest request, Model model, HttpSession session, MemberDto dto)
			throws Exception {

		String pass = request.getParameter("pass");
		String pw = sha256.encrypt(pass);
		dto.setPass(pw);

		MemberDto login = service.login(dto);

		if (login != null && dto.getPass().equals(login.getPass())) {

			session.setAttribute("member", login);

			if (login.getAuthority() == 0) {

				return "redirect:ControlMember";

			} else if (login.getAuthority() == 1) {

				return "redirect:MyPage";

			} else if (login.getAuthority() == 3) {

				model.addAttribute("stop", false);
				return "Login";

			} else {

				model.addAttribute("msg", false);
				return "Login";

			}

		} else {

			session.setAttribute("member", null);
			model.addAttribute("msg", false);

			return "Login";
		}

	}

	@ResponseBody
	@RequestMapping(value = "idcheck", method = RequestMethod.POST)
	public int idcheck(HttpServletRequest request) {
		String id = request.getParameter("id");

		System.out.println("id : " + id);
		int count = service.checkid(id);
		System.out.println("count : " + count);

		return count;
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/";

	}

	@RequestMapping("DelInfo")
	public String DelInfo(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		System.out.println(id);
		System.out.println(pass);

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deleteInfo(id, pass);

		return "Login";

	}

	@RequestMapping("Finduser")
	public String Finduser() {

		return "Finduser";

	}

	@RequestMapping(value = "Findpass", method = RequestMethod.POST)
	public String Findpass(HttpServletRequest request, HttpServletResponse response, Model model, MemberDto dto)
			throws IOException {

		String id2 = dto.getId();
		String mail2 = dto.getMail();
		String id = request.getParameter("id");
		String mail = request.getParameter("mail");
		Random r = new Random();
		int dice = r.nextInt(4589362) + 49311; // 이메일로 받는 부분 (난수 마이(쮸 쮸)이마
		String pass = String.valueOf(dice);
		String pw = sha256.encrypt(pass);
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.Findpass(id, mail, pw);

		System.out.println(id);
		System.out.println(mail);
		System.out.println(pass);

		if (id.equals(id2) && mail.equals(mail2)) {

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response.getWriter();
			out_equals.println("<script>alert('메일로 임시비밀번호를 보냈습니다.');</script>");
			out_equals.flush();

			String setfrom = "yjsn1301@gamil.com";
			String title = "비밀번호 찾기 이메일 입니다."; // 제목
			String content = "임시 비밀번호는 : " + pass + " 입니다. 임시 발급된 비밀번호로 로그인하여 비밀번호를 재설정 해주세요.";

			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

				messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
				messageHelper.setTo(mail); // 받는사람 이메일
				messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
				messageHelper.setText(content); // 메일 내용

				mailSender.send(message);
			} catch (Exception e) {
				System.out.println(e);
			}

		} else {

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out_equals = response.getWriter();
			out_equals.println("<script>alert('입력한 값이 맞지않습니다. 다시 확인해주세요');</script>");
			out_equals.flush();
			return "Finduser";

		}
		return "Login";

	}

	// 로그인 관련 끝

	@RequestMapping(value = "updateLoD")
	@ResponseBody
	public Object updateLoD(HttpServletRequest request) {

		String l = request.getParameter("lod");
		int lod = Integer.parseInt(l);

		String r = request.getParameter("r");
		int rnumber = Integer.parseInt(r);

		HttpSession session = request.getSession();
		MemberDto dto = (MemberDto) session.getAttribute("member");

		int mnum = dto.getMnum();

		IDao dao = sqlSession.getMapper(IDao.class);

		ArrayList<LikeOrDislike> lodList = dao.getLoD(mnum);

		if (lodList.size() < 1) {

			dao.insertLoD(mnum, rnumber, lod);

		} else {

			for (int i = 0; i < lodList.size(); i++) {

				if (lodList.get(i).getRnumber() == rnumber) {

					dao.updateLoD(mnum, rnumber, lod);

					break;

				} else {

					if (i != lodList.size() - 1) {

						continue;

					} else {

						dao.insertLoD(mnum, rnumber, lod);
					}

				}

			}

		}

		String like = dao.countLike(rnumber);

		if (like == null) {
			like = "0";
		}

		String dislike = dao.countDislike(rnumber);

		if (dislike == null) {
			dislike = "0";
		}

		dao.updateReviewLod(rnumber, like, dislike);

		JSONObject obj = new JSONObject();

		obj.put("like", like);
		obj.put("dislike", dislike);

		return obj.toMap();

	}

	@RequestMapping(value = "updateDec")
	@ResponseBody
	public String updateDec(HttpServletRequest request) {

		String d = request.getParameter("dec");
		int dec = Integer.parseInt(d);

		String r = request.getParameter("r");
		int rnumber = Integer.parseInt(r);

		HttpSession session = request.getSession();
		MemberDto dto = (MemberDto) session.getAttribute("member");

		int mnum = dto.getMnum();

		IDao dao = sqlSession.getMapper(IDao.class);

		ArrayList<LikeOrDislike> lod = dao.getLoD(mnum);

		if (lod.size() < 1) {

			dao.insertDec(mnum, rnumber, dec);

		} else {

			for (int i = 0; i < lod.size(); i++) {

				if (lod.get(i).getRnumber() == rnumber) {

					dao.updateDec(mnum, rnumber, dec);

					break;

				} else {

					if (i != lod.size() - 1) {

						continue;

					} else {

						dao.insertDec(mnum, rnumber, dec);
					}

				}

			}

		}

		String cntDec = dao.countDec(rnumber);

		if (cntDec == null) {
			cntDec = "0";
		}

		dao.updateReviewDec(rnumber, cntDec);

		return "success";

	}

	@RequestMapping(value = "updateWishList", method = RequestMethod.POST)
	@ResponseBody
	public String updateWishList(HttpServletRequest request) {

		String w = request.getParameter("wish");
		int wish = Integer.parseInt(w);

		String n = request.getParameter("n");
		int pnumber = Integer.parseInt(n);

		HttpSession session = request.getSession();
		MemberDto dto = (MemberDto) session.getAttribute("member");

		int mnum = dto.getMnum();

		IDao dao = sqlSession.getMapper(IDao.class);

		ArrayList<Wish> wishList = dao.getWishList(mnum);

		if (wishList.size() < 1) {

			dao.insertWishList(mnum, pnumber, wish);

		} else {

			for (int i = 0; i < wishList.size(); i++) {

				if (wishList.get(i).getPnumber() == pnumber) {

					dao.updateWishList(mnum, pnumber, wish);

					break;

				} else {

					if (i != wishList.size() - 1) {

						continue;

					} else {

						dao.insertWishList(mnum, pnumber, wish);
					}

				}

			}

		}

		return "success";

	}

	@RequestMapping(value = "requestLodlist", method = RequestMethod.GET)
	@ResponseBody
	public Object requestLodlist(HttpServletRequest request) {
		ArrayList<LikeOrDislike> lodList = new ArrayList<LikeOrDislike>();

		HttpSession session = request.getSession();
		MemberDto dto = (MemberDto) session.getAttribute("member");

		IDao dao = sqlSession.getMapper(IDao.class);

		lodList = dao.getLoD(dto.getMnum());

		LodJson lodJson = new LodJson();

		JSONObject lodObj = lodJson.json(lodList);

		return lodObj.toMap();

	}

	@RequestMapping(value = "requestWishList", method = RequestMethod.POST)
	@ResponseBody
	public Object requestWishList(HttpServletRequest request) {
		ArrayList<Wish> wishList = new ArrayList<Wish>();

		HttpSession session = request.getSession();
		MemberDto dto = (MemberDto) session.getAttribute("member");

		IDao dao = sqlSession.getMapper(IDao.class);
		wishList = dao.getWishList(dto.getMnum());

		JSONObject wishObj = new WishJson().json(wishList);

		return wishObj.toMap();

	}

	@RequestMapping("ControlMember")
	public String ControlMember(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();
		MemberDto dto = (MemberDto) session.getAttribute("member");

		if (dto.getAuthority() == 0) {

			SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
			Calendar cal = new GregorianCalendar(Locale.KOREA);
			cal.setTime(new java.util.Date());
			String toDate = fm.format(cal.getTime());
			cal.add(Calendar.MONTH, -1);
			String fromDate = fm.format(cal.getTime());

			model.addAttribute("fromDate", fromDate);
			model.addAttribute("toDate", toDate);

			return "ControlMember";

		} else {

			return "redirect:/";

		}

	}

	@RequestMapping(value = "reviewMemberList", method = RequestMethod.POST)
	@ResponseBody
	public Object reviewMemberList(HttpServletRequest request) {
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String from = request.getParameter("from");
		String to = request.getParameter("to");

		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<MemberDto> data = dao.getMemberList(from, to, start, end);
		int dataCount = dao.getMemberListCnt();

		JSONObject obj = new MemberListJson().json(data);
		obj.put("dataCount", dataCount);

		return obj.toMap();
	}

	@RequestMapping(value = "ControlData")
	public String ControlData(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();
		MemberDto dto = (MemberDto) session.getAttribute("member");

		if (dto.getAuthority() == 0) {

			String topic = request.getParameter("topic");

			if (topic == null) {

				topic = "0";

			}

			String te = request.getParameter("text");
			String text = "";
			if (te == null) {

				text = "%";

			} else {

				text = "%" + te + "%";
			}

			String activePage = request.getParameter("p");

			if (activePage == null) {
				activePage = "1";
			}

			int ap = Integer.parseInt(activePage);

			int end = ap * 100;
			int start = end - 99;

			IDao dao = sqlSession.getMapper(IDao.class);
			ArrayList<ProductInfo> data = dao.getProductList(topic, text, start, end);
			float totalCount = dao.getProductCount(topic, text);

			int startPage = ((ap - 1) / 10) * 10 + 1;
			int endPage = startPage + 9;
			int lastPage = 0;

			double lP = Math.ceil(totalCount / 100);

			lastPage = (int) lP;

			model.addAttribute("list", data);
			model.addAttribute("topic", topic);
			model.addAttribute("text", te);
			model.addAttribute("startPage", startPage);
			model.addAttribute("lastPage", lastPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("activePage", ap);

			return "ControlData";

		} else {

			return "redirect:/";

		}

	}

	@RequestMapping(value = "ControlEvent")
	public String ControlEvent(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();
		MemberDto dto = (MemberDto) session.getAttribute("member");

		if (dto.getAuthority() == 0) {

			String activePage = request.getParameter("p");

			if (activePage == null) {
				activePage = "1";
			}

			int ap = Integer.parseInt(activePage);

			int end = ap * 100;
			int start = end - 99;

			IDao dao = sqlSession.getMapper(IDao.class);
			ArrayList<ProductInfo> data = dao.getEventList(start, end);
			float totalCount = dao.getEventCount();

			int startPage = ((ap - 1) / 10) * 10 + 1;
			int endPage = startPage + 9;
			int lastPage = 0;

			double lP = Math.ceil(totalCount / 100);

			lastPage = (int) lP;

			model.addAttribute("list", data);
			model.addAttribute("startPage", startPage);
			model.addAttribute("lastPage", lastPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("activePage", ap);

			return "ControlEvent";

		} else {

			return "redirect:/";

		}

	}

	@RequestMapping(value = "deleteProduct", method = RequestMethod.GET)
	@ResponseBody
	public String deleteProduct(HttpServletRequest request) {

		String p = request.getParameter("n");
		int pnumber = Integer.parseInt(p);

		IDao dao = sqlSession.getMapper(IDao.class);

		dao.deletePrice(p);
		dao.deleteTags(p);
		dao.deleteIngredient(p);

		ArrayList<Integer> list = dao.getRnumberList(p);

		for (int i = 0; i < list.size(); i++) {

			String content = dao.getReviewContent(list.get(i));

			DeleteImg deleteImg = new DeleteImg();
			deleteImg.deleteImg(content, request);

			dao.deleteLoD(list.get(i));
			dao.deleteReview(list.get(i));

			String average = dao.getAverage(pnumber);

			if (average == null) {
				average = "0";
			}

			dao.updateScore(pnumber, average);

		}

		dao.deleteProduct(pnumber);

		return "success";
	}

	@RequestMapping(value = "deleteMember", method = RequestMethod.GET)
	@ResponseBody
	public String deleteMember(HttpServletRequest request) {

		String m = request.getParameter("m");

		IDao dao = sqlSession.getMapper(IDao.class);

		dao.deleteMemberLoD(m);

		dao.deleteMemberData(m);

		return "success";
	}

	@RequestMapping(value = "deleteEvent", method = RequestMethod.GET)
	@ResponseBody
	public String deleteEvent(HttpServletRequest request) {

		String e = request.getParameter("e");

		IDao dao = sqlSession.getMapper(IDao.class);

		String content = dao.getEventContent(e);

		DeleteImg deleteImg = new DeleteImg();
		deleteImg.deleteImg(content, request);

		dao.deleteEvent(e);

		return "success";
	}

	@RequestMapping(value = "ModifyProduct")
	public String ModifyProduct(HttpServletRequest request, Model model) {

		String n = request.getParameter("n");
		int pnumber = Integer.parseInt(n);

		IDao dao = sqlSession.getMapper(IDao.class);
		ProductInfo info = dao.getDetail(pnumber);
		ProductPrice price = dao.getPrice(pnumber);
		ArrayList<ProductTag> tags = dao.getTag(pnumber);

		model.addAttribute("product", info);
		model.addAttribute("price", price);
		model.addAttribute("tags", tags);

		return "ModifyProduct";
	}

	@RequestMapping(value = "ModifyProductData", method = RequestMethod.POST)
	public String ModifyProductData(HttpServletRequest request) {

		String pnumber = request.getParameter("pnumber");
		String brand = request.getParameter("brand");
		String name = request.getParameter("name");
		String unit = request.getParameter("unit");
		String price = request.getParameter("price");
		String content = request.getParameter("content");
		String tag = request.getParameter("tag");
		String[] tags = tag.split(",");

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deletePrice(pnumber);
		dao.deleteTags(pnumber);
		dao.updateProductInfo(pnumber, brand, name, content);
		dao.updatePrice(pnumber, unit, price);

		for (int i = 0; i < tags.length; i++) {
			dao.updateTags(pnumber, tags[i]);
		}

		return "redirect:ControlData";
	}

	@RequestMapping(value = "InsertProduct")
	public String InsertProduct() {
		return "InsertProduct";
	}

	@RequestMapping(value = "insertProductData", method = RequestMethod.POST)
	public String insertProductData(HttpServletRequest request) {

		String brand = request.getParameter("brand");
		String name = request.getParameter("name");
		String category = request.getParameter("category");
		String unit = request.getParameter("unit");
		String price = request.getParameter("price");
		String content = request.getParameter("content");
		String tag = request.getParameter("tag");
		String[] tags = tag.split(",");
		String ingredient = request.getParameter("ingredient");
		String[] ingredients = ingredient.split(",");

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.insertProduct(name, brand, category, content);

		int pnumber = dao.getPnumber();

		dao.insertPrice(unit, price, pnumber);

		for (int i = 0; i < tags.length; i++) {
			dao.insertTag(tags[i], pnumber);
		}

		for (int i = 0; i < ingredients.length; i++) {
			dao.insertIngredient(ingredients[i], pnumber);
		}

		return "redirect:ControlData";
	}

	@RequestMapping(value = "InsertIngredient")
	public String InsertIngredient() {
		return "InsertIngredient";
	}

	@RequestMapping(value = "insertIngredientData", method = RequestMethod.POST)
	public String insertIngredientData(HttpServletRequest request) {

		String name = request.getParameter("name");
		String level = request.getParameter("level");
		String purpose = request.getParameter("purpose");

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.insertIngredientDetail(name, level, purpose);

		return "redirect:ControlData";
	}

	// 이벤트 관련 컨트롤러

	@RequestMapping(value = "WriteEvent")
	public String WriteEvent(HttpServletRequest request, Model model) {

		return "WriteEvent";
	}

	@RequestMapping(value = "event2")
	public String event(HttpServletRequest request, Model model) {

		String etitle = request.getParameter("title");
		String estartdate = request.getParameter("startdate");
		String eenddate = request.getParameter("enddate");
		String eventimg = request.getParameter("content");

		IDao dao = sqlSession.getMapper(IDao.class);

		dao.insertevent(etitle, estartdate, eenddate, eventimg);

		return "redirect:event";
	}

	@RequestMapping(value = "event")
	public String eventview(HttpServletRequest request, Model model) {

		ArrayList<Event> event = new ArrayList<Event>();
		IDao dao = sqlSession.getMapper(IDao.class);
		event = dao.eventview();
		model.addAttribute("list", event);

		return "event";
	}

	@RequestMapping(value = "eventdetail")
	public String eventdetail(HttpServletRequest request, Model model) {

		IDao dao = sqlSession.getMapper(IDao.class);
		String enumber = request.getParameter("c");

		Event event = dao.event(enumber);

		model.addAttribute("event", event);

		return "eventdetail";
	}

	@RequestMapping(value = "faq")
	public String faq() {
		return "FAQ";
	}

	@RequestMapping(value = "MyWishList")
	public String MyWishList(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();

		MemberDto dto = (MemberDto) session.getAttribute("member");

		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<ProductInfo> data = dao.getMyWishList(dto.getMnum());

		model.addAttribute("list", data);

		return "MyWishList";
	}

	@RequestMapping(value = "updateMemberAuthority", method = RequestMethod.POST)
	@ResponseBody
	public String updateMemberAuthority(HttpServletRequest request) {

		String mnum = request.getParameter("m");
		String authority = request.getParameter("a");

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.updateMemberAuthority(mnum, authority);

		return "success";
	}

	/* qna 부분 시작 */

	@RequestMapping(value = "qnaview")
	public String qnaview(PageVO pageVO, HttpServletRequest request, Model model) {

		ArrayList<Replyqna> reply = new ArrayList<Replyqna>();

		IDao dao = sqlSession.getMapper(IDao.class);
		pageVO.pageCalculate(dao.total());

		reply = dao.getqnaList(pageVO);

		model.addAttribute("list", reply);
		model.addAttribute("pageVO", pageVO);

		return "qnaview";
	}

	@RequestMapping(value = "qnawrite")
	public String qnainsert(HttpServletRequest request, Model model) {

		return "qnawrite";
	}

	@RequestMapping(value = "qnaview1")
	public String qnaview1(HttpServletRequest request, Model model, HttpSession session) {
		IDao dao = sqlSession.getMapper(IDao.class);

		String qtitle = request.getParameter("title");
		String qcontent = request.getParameter("content");

		MemberDto dto = (MemberDto) session.getAttribute("member");
		String id = dto.getId();
		int authority = dto.getAuthority();

		System.out.println(qcontent);

		dao.insertqna(qtitle, qcontent, id);

		if (authority == 0) {

			return "redirect:ControlQna";

		} else {

			return "redirect:qnaview";

		}

	}

	@RequestMapping(value = "qnadetail")
	public String qnadetail(HttpServletRequest request, Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		String qbid = request.getParameter("qbid");
		String bno = request.getParameter("bno");

		ArrayList<Replyqna1> reply = dao.qnadetail1(qbid);

		Replyqna qna = dao.qnadetail(qbid);
		model.addAttribute("qbid", qna);
		model.addAttribute("bno", bno);

		model.addAttribute("qbids", reply);

		return "qnadetail";

	}

	@RequestMapping(value = "modify1")
	public String modify1(Replyqna replyqna, HttpSession session) {
		IDao dao = sqlSession.getMapper(IDao.class);

		MemberDto dto = (MemberDto) session.getAttribute("member");
		int authority = dto.getAuthority();

		dao.updateqna(replyqna);

		if (authority == 0) {

			return "redirect:ControlQnaDetail?qbid=" + replyqna.getQbid();

		} else {

			return "redirect:qnadetail?qbid=" + replyqna.getQbid();

		}
	}

	@RequestMapping(value = "modify")
	public String modify(String qbid, HttpSession session, Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);

		Replyqna qna = dao.qnadetail(qbid);

		model.addAttribute("qbid", qna);

		return "modify";

	}

	@RequestMapping(value = "requestQna")
	@ResponseBody
	public Object requestQna(HttpServletRequest request, Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		String qbid = request.getParameter("r");
		Replyqna qna = dao.qnadetail(qbid);
		JSONObject obj = new JSONObject();
		obj.put("content", qna.getQcontent());

		return obj.toMap();
	}

	@RequestMapping(value = "deleteqna")
	public String deleteqna(HttpServletRequest request, Model model, HttpSession session) {

		String qbids = request.getParameter("qbids");
		IDao dao = sqlSession.getMapper(IDao.class);

		MemberDto dto = (MemberDto) session.getAttribute("member");
		int authority = dto.getAuthority();

		dao.deleteqna(qbids);

		if (authority == 0) {

			return "redirect:ControlQna";

		} else {

			return "redirect:qnaview";

		}

	}

	@RequestMapping(value = "write1")
	public String qnareply(HttpServletRequest request, Model model, HttpSession session) {
		String bcontent = request.getParameter("qcontent");
		System.out.println(bcontent);
		String qbid = request.getParameter("qbid");
		System.out.println(qbid);

		MemberDto dto = (MemberDto) session.getAttribute("member");
		String id = dto.getId();
		int authority = dto.getAuthority();

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.insertreply(qbid, bcontent, id);

		if (authority == 0) {

			return "redirect:ControlQnaDetail?qbid=" + qbid;

		} else {

			return "redirect:qnadetail?qbid=" + qbid;

		}

	}

	@RequestMapping(value = "deletereply")
	public String deletereply(HttpServletRequest request, Model model, HttpSession session) {

		String rno = request.getParameter("rno");
		String bno = request.getParameter("bno");
		IDao dao = sqlSession.getMapper(IDao.class);

		dao.deletereply(rno);

		MemberDto dto = (MemberDto) session.getAttribute("member");
		int authority = dto.getAuthority();

		if (authority == 0) {

			return "redirect:ControlQnaDetail?qbid=" + bno;

		} else {

			return "redirect:qnadetail?qbid=" + bno;
		}

	}

	@RequestMapping(value = "ControlQna")
	public String ControlQna(PageVO pageVO, HttpServletRequest request, Model model) {

		ArrayList<Replyqna> reply = new ArrayList<Replyqna>();

		IDao dao = sqlSession.getMapper(IDao.class);
		pageVO.pageCalculate(dao.total());

		reply = dao.getqnaList(pageVO);

		model.addAttribute("list", reply);
		model.addAttribute("pageVO", pageVO);

		return "ControlQna";

	}

	@RequestMapping(value = "ControlQnaDetail")
	public String ControlQnaDetail(HttpServletRequest request, Model model) {

		IDao dao = sqlSession.getMapper(IDao.class);
		String qbid = request.getParameter("qbid");
		String bno = request.getParameter("bno");

		ArrayList<Replyqna1> reply = dao.qnadetail1(qbid);

		Replyqna qna = dao.qnadetail(qbid);
		model.addAttribute("qbid", qna);
		model.addAttribute("bno", bno);

		model.addAttribute("qbids", reply);

		return "ControlQnaDetail";

	}

}
