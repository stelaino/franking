package top.stelaino.fk.db.attr.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import top.stelaino.fk.db.attr.entity.AttrValueDO;
import top.stelaino.fk.db.attr.mapper.AttrValueMapper;
import top.stelaino.fk.db.attr.service.IAttrValueService;

/**
 * <p>
 * 属性值规格 服务实现类
 * </p>
 *
 * @author stelaino[stelaino@163.com]
 * @since 2021-11-21
 */
@Primary
@Service
public class AttrValueServiceImpl extends ServiceImpl<AttrValueMapper, AttrValueDO> implements IAttrValueService {

}
