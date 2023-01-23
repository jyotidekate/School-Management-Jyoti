package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.AddInvestment;
import com.society.application.model.AdvisorCollectorDetails;

@Repository
public interface AddInvestmentRepo extends JpaRepository<AddInvestment, Integer>{

    List<AddInvestment> findBypolicyno(String policyno);

	List<AddInvestment> findBysearchMemberCode(String search_MemberCode);
	 
	@Modifying 
	@Transactional 
    @Query("update AddInvestment  set policyDate=:string, nomineeName=:string2, nomineeAge=:string3,nomineeRelation=:string4,cspName=:string5,modeOfOp=:string6, jointCode=:string7,schemeType=:string8,schemeName=:string9,mode=:string10,policyAmount=:string11,paymode=:string12,remarks=:string13,advisorCode=:string14 where searchMemberCode=:string15")
	void updateThroughsearchMemberCode(String string, String string2, String string3, String string4, String string5,
			String string6, String string7, String string8, String string9, String string10, String string11,
			String string12, String string13, String string14, String string15);

	List<AddInvestment> findByid(int i);

	@Modifying
	@Transactional
	@Query("update AddInvestment set tDate=:string, CSPName=:string2, transactionFor=:string3, remarks=:string4, transactionType=:string5, txtAmount=:string6, paymode=:string7 where id=:string8")
	void updateThroughid(String string, String string2, String string3, String string4, String string5, String string6,
			String string7, int string8);

}
