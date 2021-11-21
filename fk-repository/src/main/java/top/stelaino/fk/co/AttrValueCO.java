package top.stelaino.fk.co;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @author huang.jincheng
 * @description :
 * @since 2021/11/21 21:31
 */
@SuppressWarnings("AlibabaClassNamingShouldBeCamel")
@Data
@ApiModel(value = "AttrValueCO对象", description = "属性值规格")
public class AttrValueCO  implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "记录属性值。")
    private String attrValue;

    @ApiModelProperty(value = "记录属性值名称")
    private String attrValueName;

    @ApiModelProperty(value = "记录属性值描述")
    private String attrValueDesc;

    @ApiModelProperty(value = "记录同个属性不同的属性值在界面展现的顺序号")
    private String attrValueSort;

    @ApiModelProperty(value = "记录备注信息。")
    private String remark;
}
