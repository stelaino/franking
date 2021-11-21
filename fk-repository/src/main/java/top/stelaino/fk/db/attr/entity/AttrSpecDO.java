package top.stelaino.fk.db.attr.entity;

import com.baomidou.mybatisplus.annotation.IdType;
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
 * 属性规格
 * </p>
 *
 * @author stelaino[stelaino@163.com]
 * @since 2021-11-21
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("attr_spec")
@ApiModel(value = "AttrSpecDO对象", description = "属性规格")
public class AttrSpecDO implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "记录属性的主键")
    @TableId(value = "ATTR_ID", type = IdType.AUTO)
    private Long attrId;

    @ApiModelProperty(value = "归属中心")
    @TableField("ATTR_CENTER_TYPE")
    private String attrCenterType;

    @ApiModelProperty(value = "记录属性编码")
    @TableField("ATTR_NBR")
    private String attrNbr;

    @ApiModelProperty(value = "记录业务对象属性规格名称")
    @TableField("ATTR_NAME")
    private String attrName;

    @ApiModelProperty(value = "记录业务对象属性规格详细描述")
    @TableField("ATTR_DESC")
    private String attrDesc;

    @ApiModelProperty(value = "记录状态。LOVB=PUB-C-0001。")
    @TableField("STATUS_CD")
    private String statusCd;

    @ApiModelProperty(value = "记录创建的员工")
    @TableField("CREATE_STAFF")
    private Long createStaff;

    @ApiModelProperty(value = "记录修改的员工")
    @TableField("UPDATE_STAFF")
    private Long updateStaff;

    @ApiModelProperty(value = "记录创建的时间")
    @TableField("CREATE_DATE")
    private LocalDateTime createDate;

    @ApiModelProperty(value = "状态修改的时间")
    @TableField("STATUS_DATE")
    private LocalDateTime statusDate;

    @ApiModelProperty(value = "记录修改的时间")
    @TableField("UPDATE_DATE")
    private LocalDateTime updateDate;

    @ApiModelProperty(value = "记录备注信息。")
    @TableField("REMARK")
    private String remark;


}
