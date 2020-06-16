package com.tech.mainPrj.dao;

import java.sql.Date;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

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


public interface IDao {
	public ArrayList<ProductInfo> Top3(String category);
	public ProductInfo getDetail(int pnumber);
	public ProductPrice getPrice(int pnumber);
	public ArrayList<ProductTag> getTag(int pnumber);
	public ArrayList<ProductIngredient> getIngredient(int pnumber);
	public ArrayList<ProductIngredient> getDanger(int pnumber);
	public ArrayList<ProductInfo> byCategory(String category, int start, int end, String order, String gender, String age, String skin, int from, int to);
	public String mostExpensive(String category);
	public ArrayList<ReviewInfo> reviewList(int pnumber, int start, int end, String gender, String age, String skin);
	public ReviewInfo getrDetail(int rnumber);
	public void insertReview(int pnumber, String title, String rating, String content, String id, String age, String gender, String skin);
	public String getAverage(int pnumber);
	public void updateScore(int pnumber, String average);
	public int reviewCount(int pnumber);
	public void deleteReview(int rnumber);
	public void modifyReview(int rnumber, String title, String rating, String content, Date date);
	public ArrayList<Integer> scoreList(int pnumber);
	public ArrayList<ProductInfo> searchList(String search, int i, int j);
	public void updateStep(int resRnumber, String rstep);
	public void insertResponse(int pnumber, String resContent, int resRnumber, int resRstep, int resRindent, String id, String age, String gender, String skin);
	public ArrayList<ReviewInfo> searchResponse(int rnumber, int start, int end);
	public ArrayList<ChartInfo> getReviewChart(String from, String to);
	//회원페이지
	public void register(MemberDto dto);
	public MemberDto login(MemberDto dto);
	public void updateinfo(String pass, String mail, String phone, String skintype,String id);
	public void deleteInfo(String id, String pass);
	public void Findpass(String id,String mail,String pass);
	public int checkid(String id);
	
	public void insertLoD(int mnum, int rnumber, int lod);
	public void updateLoD(int mnum, int rnumber, int lod);
	public ArrayList<LikeOrDislike> getLoD(int mnum);
	public void insertDec(int mnum, int rnumber, int dec);
	public void updateDec(int mnum, int rnumber, int dec);
	public void insertWishList(int mnum, int pnumber, int wish);
	public void updateWishList(int mnum, int pnumber, int wish);
	public ArrayList<Wish> getWishList(int mnum);
	public String countLike(int rnumber);
	public String countDislike(int rnumber);
	public void updateReviewLod(int rnumber, String like, String dislike);
	public String countDec(int rnumber);
	public void updateReviewDec(int rnumber, String cntDec);
	public String getReviewContent(int rnumber);
	public String getEventContent(String e);
	public void deleteLoD(int rnumber);
	public ArrayList<Integer> getPieAge(String from, String to);
	public ArrayList<Integer> getPieGender(String from, String to);
	public ArrayList<Integer> getPieSkin(String from, String to);
	public ArrayList<ReviewInfo> getReviewList(String from, String to, String start, String end);
	public int getReviewListCnt(String from, String to);
	public ArrayList<MemberDto> getMemberList(String from, String to, String start, String end);
	public int getMemberListCnt();
	public ArrayList<ProductInfo> getProductList(String topic, String text, int start, int end);
	public void updateProductInfo(String pnumber, String brand, String name, String content);
	public void updateEvent(String enumber, String title, String startdate, String enddate, String content);
	public void deletePrice(String pnumber);
	public void deleteTags(String pnumber);
	public void deleteIngredient(String pnumber);
	public void deleteProduct(int pnumber);
	public void deleteEvent(String e);
	public void deleteMemberLoD(String m);
	public void deleteMemberData(String m);
	public void updatePrice(String pnumber, String unit, String price);
	public void updateTags(String pnumber, String tag);
	public float getProductCount(String topic, String text);
	public void insertProduct(String brand, String name, String category, String content);
	public void insertPrice(String unit, String price, int pnumber);
	public void insertTag(String tags, int pnumber);
	public void insertIngredient(String ingredients, int pnumber);
	public void insertIngredientDetail(String name, String level, String purpose);
	public int getPnumber();
	public ArrayList<ReviewInfo> getReviewById(String id);
	public ArrayList<ProductInfo> getMyWishList(int mnum);
	public ArrayList<Integer> getRnumberList(String p);
	public void updateMemberAuthority(String mnum, String authority);
	
	//이벤트 관련 DAO

	public void insertevent(String etitle, String estartdate, String eenddate, String eventimg);
	public ArrayList<Event> eventview();
	public Event event(String enumber);
	public ArrayList<ProductInfo> getEventList(int start, int end);
	public float getEventCount();
	
	//reply 관련 DAO
	public ArrayList<Replyqna> getqnaList(PageVO pageVO);
	public void insertqna(String qtitl,String qcontent, String id);
	public Replyqna qnadetail(String qbid);
	public void updateqna(@Param("qtitle") String qtitle, @Param("qcontent")String qcontent, @Param("qbid") String qbid);
	public void deleteqna(String qbid);
	public int total();
	public String getQregId(String qbid);
	public void updateqna(Replyqna replyqna);
	public void insertreply(String bno, String bcontent, String id);
	public ArrayList<Replyqna1> qnadetail1(String bno);
	public void deletereply(String rno);
	
	
	
	
	
	
	
	
	
	
	
	
}
