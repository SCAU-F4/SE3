package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Indent;

public interface IndentMapper {
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	Indent findByindentID(int indentID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	int findindentStateByindentID(int indentID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	List<Indent> findBycustomerID(int customerID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	int isIndentexitByaddressID(int addressID);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	List<Indent> findAllIndentItembycustomerIDandaddressID(@Param("customerID") int CustomerID,@Param("addressID") int AddressID);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.SERIALIZABLE)
	int insert(Indent indent);
     
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int update(Indent indent);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int delete(Indent indent);
}
