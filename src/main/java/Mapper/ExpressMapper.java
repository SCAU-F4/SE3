package Mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Express;

@Repository
public interface ExpressMapper {
	Express findByexpressCode(@Param("expressCode") int expressCode);

	int insert(Express express);

	int update(Express express);

	int delete(Express express);

	int deleteByexpressCode(int expressCode);
}
