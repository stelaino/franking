package top.stelaino.fk.db.job.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import top.stelaino.fk.db.job.entity.ScheduleJobDO;
import top.stelaino.fk.db.job.mapper.ScheduleJobMapper;
import top.stelaino.fk.db.job.service.IScheduleJobService;

/**
 * <p>
 * 调度任务表 服务实现类
 * </p>
 *
 * @author stelaino[stelaino@163.com]
 * @since 2021-11-21
 */
@Service
public class ScheduleJobServiceImpl extends ServiceImpl<ScheduleJobMapper, ScheduleJobDO> implements IScheduleJobService {

}
