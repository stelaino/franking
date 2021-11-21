package top.stelaino.fk.db.job.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 调度任务表
 * </p>
 *
 * @author stelaino[stelaino@163.com]
 * @since 2021-11-21
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("schedule_job")
@ApiModel(value="ScheduleJobDO对象", description="调度任务表")
public class ScheduleJobDO implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "任务id")
    @TableId("schedule_job_id")
    private Long scheduleJobId;

    @ApiModelProperty(value = "任务名称")
    @TableField("schedule_job_name")
    private String scheduleJobName;

    @ApiModelProperty(value = "执行任务的集群名称")
    @TableField("cluster_name")
    private String clusterName;

    @ApiModelProperty(value = "cron表达式")
    @TableField("cron_expression")
    private String cronExpression;

    @ApiModelProperty(value = "任务类")
    @TableField("job_class_name")
    private String jobClassName;

    @ApiModelProperty(value = "启用状态 1000启用 2000停用")
    @TableField("state")
    private String state;

    @ApiModelProperty(value = "描述")
    @TableField("description")
    private String description;

    @ApiModelProperty(value = "任务名称")
    @TableField("job_name")
    private String jobName;

    @ApiModelProperty(value = "任务组名称")
    @TableField("job_group")
    private String jobGroup;

    @ApiModelProperty(value = "触发器名称")
    @TableField("job_trigger_name")
    private String jobTriggerName;

    @ApiModelProperty(value = "任务触发器组名称")
    @TableField("job_trigger_group")
    private String jobTriggerGroup;

    @ApiModelProperty(value = "最后一次任务启动时间")
    @TableField("last_startup_date")
    private LocalDateTime lastStartupDate;

    @ApiModelProperty(value = "最后一次任务停止时间")
    @TableField("last_stop_date")
    private LocalDateTime lastStopDate;

    @ApiModelProperty(value = "创建时间")
    @TableField("create_date")
    private LocalDateTime createDate;

    @ApiModelProperty(value = "修改时间")
    @TableField("update_date")
    private LocalDateTime updateDate;

    @ApiModelProperty(value = "状态")
    @TableField("status_cd")
    private String statusCd;


}
