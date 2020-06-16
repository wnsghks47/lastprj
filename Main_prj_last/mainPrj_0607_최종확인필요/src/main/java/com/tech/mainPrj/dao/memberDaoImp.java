package com.tech.mainPrj.dao;

import java.sql.Date;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

@Repository //Dao를 등록
public class memberDaoImp implements IDao{
	
	
	@Autowired
	SqlSession sql;
	
	

	@Override
	public ArrayList<ProductInfo> Top3(String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductInfo getDetail(int pnumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductPrice getPrice(int pnumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ProductTag> getTag(int pnumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ProductIngredient> getIngredient(int pnumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ProductIngredient> getDanger(int pnumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ProductInfo> byCategory(String category, int start, int end, String order, String gender,
			String age, String skin, int from, int to) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String mostExpensive(String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ReviewInfo> reviewList(int pnumber, int start, int end, String gender, String age, String skin) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReviewInfo getrDetail(int rnumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertReview(int pnumber, String title, String rating, String content, String id, String age,
			String gender, String skin) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getAverage(int pnumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateScore(int pnumber, String average) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int reviewCount(int pnumber) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteReview(int rnumber) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyReview(int rnumber, String title, String rating, String content, Date date) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<Integer> scoreList(int pnumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ProductInfo> searchList(String search, int i, int j) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateStep(int resRnumber, String rstep) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertResponse(int pnumber, String resContent, int resRnumber, int resRstep, int resRindent, String id,
			String age, String gender, String skin) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<ReviewInfo> searchResponse(int rnumber, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ChartInfo> getReviewChart(String from, String to) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void register(MemberDto dto) {
		sql.insert("com.tech.mainPrj.dao.IDao.register", dto);
		
	}

	@Override
	public MemberDto login(MemberDto dto) {
	
		return sql.selectOne("com.tech.mainPrj.dao.IDao.login", dto);
	}

	@Override
	public void updateinfo(String pass, String mail, String phone, String skintype, String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteInfo(String id, String pass) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void Findpass(String id, String mail, String pass) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int checkid(String id) {
		int result=sql.selectOne("com.tech.mainPrj.dao.IDao.checkid", id);
		return result;
	}

	@Override
	public void insertLoD(int lod, int rnumber, int lod2) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateLoD(int mnum, int rnumber, int lod) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<LikeOrDislike> getLoD(int mnum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertDec(int mnum, int rnumber, int dec) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateDec(int mnum, int rnumber, int dec) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertWishList(int mnum, int pnumber, int wish) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateWishList(int mnum, int pnumber, int wish) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<Wish> getWishList(int mnum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String countLike(int rnumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String countDislike(int rnumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateReviewLod(int rnumber, String like, String dislike) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String countDec(int rnumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateReviewDec(int rnumber, String cntDec) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getReviewContent(int rnumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getEventContent(String e) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteLoD(int rnumber) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<Integer> getPieAge(String from, String to) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Integer> getPieGender(String from, String to) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Integer> getPieSkin(String from, String to) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ReviewInfo> getReviewList(String from, String to, String start, String end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getReviewListCnt(String from, String to) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<MemberDto> getMemberList(String from, String to, String start, String end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getMemberListCnt() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<ProductInfo> getProductList(String topic, String text, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateProductInfo(String pnumber, String brand, String name, String content) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateEvent(String enumber, String title, String startdate, String enddate, String content) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePrice(String pnumber) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteTags(String pnumber) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteIngredient(String pnumber) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteProduct(int pnumber) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteEvent(String e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMemberLoD(String m) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMemberData(String m) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePrice(String pnumber, String unit, String price) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateTags(String pnumber, String tag) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public float getProductCount(String topic, String text) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void insertProduct(String brand, String name, String category, String content) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertPrice(String unit, String price, int pnumber) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertTag(String tags, int pnumber) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertIngredient(String ingredients, int pnumber) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertIngredientDetail(String name, String level, String purpose) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getPnumber() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<ReviewInfo> getReviewById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ProductInfo> getMyWishList(int mnum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Integer> getRnumberList(String p) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertevent(String etitle, String estartdate, String eenddate, String eventimg) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<Event> eventview() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Event event(String enumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ProductInfo> getEventList(int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public float getEventCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateMemberAuthority(String mnum, String authority) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<Replyqna> getqnaList(PageVO pageVO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertqna(String qtitl, String qcontent, String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Replyqna qnadetail(String qbid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateqna(String qtitle, String qcontent, String qbid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteqna(String qbid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int total() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String getQregId(String qbid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateqna(Replyqna replyqna) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertreply(String bno, String bcontent, String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<Replyqna1> qnadetail1(String bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deletereply(String rno) {
		// TODO Auto-generated method stub
		
	}

	
}
