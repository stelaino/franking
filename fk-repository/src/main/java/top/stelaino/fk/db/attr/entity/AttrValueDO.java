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
 * 属性值规格
 * </p>
 *
 * @author stelaino[stelaino@163.com]
 * @since 2021-11-21
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("attr_value")
@ApiModel(value = "AttrValueDO对象", description = "属性值规格")
public class AttrValueDO implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "记录属性值的主键")
    @TableId(value = "ATTR_VALUE_ID", type = IdType.AUTO)
    private Long attrValueId;

    @ApiModelProperty(value = "记录业务对象属性规格业务编码")
    @TableField("ATTR_ID")
    private Long attrId;

    @ApiModelProperty(value = "记录属性编码")
    @TableField("ATTR_NBR")
    private String attrNbr;

    @ApiModelProperty(value = "记录属性值编码")
    @TableField("ATTR_CODE")
    private String attrCode;

    @ApiModelProperty(value = "记录属性值。")
    @TableField("ATTR_VALUE")
    private String attrValue;

    @ApiModelProperty(value = "记录属性值名称")
    @TableField("ATTR_VALUE_NAME")
    private String attrValueName;

    @ApiModelProperty(value = "记录属性值描述")
    @TableField("ATTR_VALUE_DESC")
    private String attrValueDesc;

    @ApiModelProperty(value = "记录的创建时间")
    @TableField("CREATE_DATE")
    private LocalDateTime createDate;

    @ApiModelProperty(value = "状态修改的时间")
    @TableField("STATUS_DATE")
    private LocalDateTime statusDate;

    @ApiModelProperty(value = "记录状态")
    @TableField("STATUS_CD")
    private String statusCd;

    @ApiModelProperty(value = "记录的修改时间")
    @TableField("UPDATE_DATE")
    private LocalDateTime updateDate;

    @ApiModelProperty(value = "记录的创建员工")
    @TableField("CREATE_STAFF")
    private Long createStaff;

    @ApiModelProperty(value = "记录的修改员工")
    @TableField("UPDATE_STAFF")
    private Long updateStaff;

    @ApiModelProperty(value = "记录同个属性不同的属性值在界面展现的顺序号")
    @TableField("ATTR_VALUE_SORT")
    private String attrValueSort;

    @ApiModelProperty(value = "记录备注信息。")
    @TableField("REMARK")
    private String remark;


}
