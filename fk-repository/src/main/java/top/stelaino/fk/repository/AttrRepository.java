package top.stelaino.fk.repository;


import cn.hutool.core.bean.BeanUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import top.stelaino.fk.co.AttrValueCO;
import top.stelaino.fk.db.attr.entity.AttrValueDO;
import top.stelaino.fk.db.attr.service.IAttrValueService;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 属性值规格 前端控制器
 * </p>
 *
 * @author stelaino[stelaino@163.com]
 * @since 2021-11-21
 */
@Component
public class AttrRepository {
    @Autowired
    private IAttrValueService attrValueService;

    public List<AttrValueCO> listAttrNbr(String attrNbr) {
        return listByAttrNbr(attrNbr);
    }

    public List<AttrValueCO> listModelFuncEvent() {
        return listByAttrNbr("FUNC_EVENT");
    }

    public List<AttrValueCO> listMetaType() {
        return listByAttrNbr("META_TYPE");
    }

    public List<AttrValueCO> listMetaUnit() {
        return listByAttrNbr("META_UNIT");
    }

    public List<AttrValueCO> listDeviceType() {
        return listByAttrNbr("DEVICE_TYPE");
    }

    public List<AttrValueCO> listLocations() {
        return listByAttrNbr("ZONE");
    }

    public List<AttrValueDO> listDoByAttrNbr(String attrNbr) {
        return attrValueService.lambdaQuery().eq(AttrValueDO::getAttrNbr, attrNbr)
                .eq(AttrValueDO::getStatusCd, "1000").list();
    }

    public List<AttrValueCO> listByAttrNbr(String attrNbr) {
        List<AttrValueCO> list = new ArrayList<>();
        listDoByAttrNbr(attrNbr).forEach(item -> {
            list.add(BeanUtil.copyProperties(item, AttrValueCO.class));
        });
        return list;
    }
}
