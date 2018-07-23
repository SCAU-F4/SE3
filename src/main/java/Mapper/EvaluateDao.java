package Mapper;

import pojo.Evaluate;

public interface EvaluateDao {
	Evaluate findById(int expressID);

	int insert(Evaluate evaluate);

	int update(Evaluate evaluate);

	int delete(Evaluate evaluate);
}
