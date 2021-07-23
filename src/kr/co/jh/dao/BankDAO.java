package kr.co.jh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.jh.util.ConnectionFactory;
import kr.co.jh.util.JDBCClose;
import kr.co.jh.vo.BankVO;
import kr.co.jh.vo.TransVO;

public class BankDAO {
	// 게시글 관리.

	public BankDAO() {
		
	}
/**
 * 전체계좌조회 서비스
 *@author joohee
 * */
	public List<BankVO> searchAll (String user_id) throws Exception {
		List<BankVO> bank = new ArrayList<BankVO>();
		Connection conn =null;
		PreparedStatement pstmt =null;
		try {
			conn= new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			
			/*
			 * select c.bank_name,b.acc_no, b.acc_name,b.acc_date
					from user_info u, bank_info b, bank_code c
					where u.user_id =b.user_id
					and c.bank_code= b.bank_code
					and u.user_id='joohee';
			 */
			sql.append(" select c.bank_name bank_name, b.acc_no acc_no , b.acc_name acc_name, to_char(b.acc_date,'yyyy/mm/dd') acc_date ");
			sql.append("  from user_info u, bank_info b, bank_code c  ");
			sql.append("  where u.user_id =b.user_id ");
			sql.append("  and c.bank_code= b.bank_code  ");
			sql.append("  and u.user_id=? ");
			
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setString(1,user_id);
		
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
			
				String bank_name= rs.getString("bank_name");
				String acc_no=rs.getString("acc_no");
				String acc_name=rs.getString("acc_name");
				String acc_date=rs.getString("acc_date");
				
				System.out.println("bank_name"+ bank_name);
				System.out.println("acc_no"+ acc_no);
				System.out.println("acc_name"+ acc_name);
				System.out.println("acc_date"+ acc_date);
				
				BankVO search = new BankVO(bank_name,acc_no,acc_name,acc_date);
				bank.add(search);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCClose.close(conn, pstmt);
		}
		
		return bank;
	}

	

	/**계좌개설**/
	public void resisterAcc (BankVO newacc) throws Exception {
		
		Connection conn =null;
		PreparedStatement pstmt =null;
		try {
			conn= new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			
			sql.append("INSERT INTO BANK_INFO(acc_no,acc_pw,acc_name,bank_code,user_id) ");					
			sql.append("  VALUES(111||round(dbms_random.value(100000000,999999999)),?,?,?,?) ");
			
	 // 계좌번호 앞자리 고정 어떻게함?/ bank코드 값으로 이름 연결하기. (완료)
			//앞자리: '123'||시퀀스 / 코드: ui에서 스위치로 설정.
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setString(1,newacc.getAcc_pw());
			pstmt.setString(2,newacc.getAcc_name());
			pstmt.setString(3,newacc.getBank_code());
			pstmt.setString(4,newacc.getUser_id());
		
			
			
			pstmt.executeUpdate();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCClose.close(conn, pstmt);
		}
		
	
	}
	
	/**생성계좌 보여주기**/
	//아직 구현 안함. - 계좌 개설하면 개설된 계좌 보여줌.(화면없음)
	public String getAccId (String acc) throws Exception{
		String accid = "";		
		BankVO bank = new BankVO();
		Connection conn=null;
		PreparedStatement pstmt = null;
		conn=new ConnectionFactory().getConnection();
		
		StringBuilder sql = new StringBuilder();
		sql.append("  select bank_name, acc_no ");
		sql.append(" from(select b.acc_no,b.acc_date,b.acc_name,c.bank_name  ");
		sql.append("  from bank_info b,bank_code c  ");
		sql.append(" where b.bank_code = c.bank_code ")	;	
		sql.append("  and user_id=?  ");
	
		pstmt =conn.prepareStatement(sql.toString());
		pstmt.setString(1, acc);
		
	
		
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			accid = rs.getString("user_id");
		}
		return accid;
		
		//여기할차례!!!
	}
	
	
	//계좌이체
	public List<BankVO> transList (TransVO tv) throws Exception{
		List<BankVO> list = new ArrayList<BankVO>();
		
	
		return null;
		
	}





}