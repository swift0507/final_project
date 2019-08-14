package service;

import org.springframework.beans.factory.annotation.Autowired;

import dao.AdminDao;
import dao.AnswerDao;
import dao.BanlistDao;
import dao.BannerDao;
import dao.BasketDao;
import dao.CategoryDao;
import dao.ContactDao;
import dao.DeliveryDao;
import dao.DetailDao;
import dao.EventDao;
import dao.FaqDao;
import dao.MemberDao;
import dao.NoticeDao;
import dao.OptionDetailDao;
import dao.PickDao;
import dao.ProdOptionDao;
import dao.ProdReportDao;
import dao.ProductDao;
import dao.ProductPictDao;
import dao.QnaCommentDao;
import dao.QnaDao;
import dao.ReceiptDao;
import dao.ReceiptOrderDao;
import dao.RegisterDao;
import dao.ReplyDao;
import dao.ReviewDao;
import dao.ReviewReportDao;
import dao.SellerDao;

public class HSServiceField {
	@Autowired
	MemberDao memberDao; 
	@Autowired
	AdminDao adminDao;
	@Autowired
	AnswerDao answerDao;
	@Autowired
	BanlistDao banlistDao;
	@Autowired
	BannerDao bannerDao;
	@Autowired
	BasketDao basketDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	ContactDao contactDao;
	@Autowired
	DeliveryDao deliveryDao;
	@Autowired
	DetailDao detailDao;
	@Autowired
	FaqDao faqDao;
	@Autowired
	NoticeDao noticeDao;
	@Autowired
	OptionDetailDao optionDetailDao;
	@Autowired
	PickDao pickDao;
	@Autowired
	ProdOptionDao prodOptionDao;
	@Autowired
	ProdReportDao prodReportDao;
	@Autowired
	ProductDao productDao;
	@Autowired
	ProductPictDao productPictDao;
	@Autowired
	QnaCommentDao qnaCommentDao;
	@Autowired
	QnaDao qnaDao;
	@Autowired
	ReceiptDao receiptDao; 
	@Autowired
	ReceiptOrderDao receiptOrderDao;
	@Autowired
	RegisterDao registerDao;
	@Autowired
	ReplyDao replyDao;
	@Autowired
	ReviewDao reviewDao;
	@Autowired
	ReviewReportDao reviewReportDao;
	@Autowired
	SellerDao sellerDao;
	@Autowired
	EventDao eventDao;
}
