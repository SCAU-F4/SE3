package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Indent;

@Repository
public interface IndentMapper {
	Indent findByindentID(int indentID);

	int findindentStateByindentID(int indentID);

	int findexpressCodeByindentID(int indentID);

	List<Indent> findBycustomerID(int customerID);

	List<Indent> getAllIndent();

	int isIndentexitByaddressID(int addressID);

	List<Indent> findAllIndentItembycustomerIDandaddressID(@Param("customerID") int CustomerID,
			@Param("addressID") int AddressID);

	int insert(Indent indent);

	int update(Indent indent);

	int updateaddressIDAndindentStateByindentID(@Param("indentID") int indentID, @Param("addressID") int addressID,
			@Param("indentState") int indentState);

	int updateindentStateByindentID(@Param("indentID") int indentID, @Param("indentState") int indentState);

	int delete(Indent indent);

	int deleteByindentID(int indentID);

	int deleteBycustomerID(@Param("customerID") int CustomerID);
}
