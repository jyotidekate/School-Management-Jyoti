package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.AdvisorCollectorDetails;


@Repository
public interface AdvisorCollectorDetailsRepo extends JpaRepository<AdvisorCollectorDetails, Integer>{

	List<AdvisorCollectorDetails> findBymemberId(int i);
	
    @Modifying
    @Transactional
    @Query("update AdvisorCollectorDetails p set p.applicationDate=:string,p.remarks =:string2 where p.memberId =:i")
	int updateThroughPolicyNo(String string, String string2, int i);

	List<AdvisorCollectorDetails> findByselectMember(String selectMember);
	
	@Modifying
	@Transactional
	@Query("update AdvisorCollectorDetails p set p.joiningDate=:joiningDate,p.nomineeName =:nomineeName,p.relation =:relation,p.branchName =:branchName,p.nomineeAge =:nomineeAge,p.selectPosition =:selectPosition,p.introducerCode =:introducerCode,p.feesIfAny =:feesIfAny,p.paymentBy =:paymentBy,p.remarks =:remarks where p.selectMember =:selectMember")
    int updateThroughselectMember(String joiningDate, String nomineeName, String relation, String branchName,
			String nomineeAge, String selectPosition, String introducerCode, String feesIfAny, String paymentBy,
			String remarks, String selectMember);

}
