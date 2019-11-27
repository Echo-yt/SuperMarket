package com.zhg.javakc.modules.supermarket.commidity_label.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supermarket.commidity_label.dao.LabelDao;
import com.zhg.javakc.modules.supermarket.commidity_label.entity.LabelEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/22 14:52
 */
@Service
public class LabelService extends BaseService<LabelDao, LabelEntity> {

    @Autowired
    private LabelDao labelDao;

    /**
     * @param entity
     * @param page
     * @return
     */
    public Page<LabelEntity> queryTest(LabelEntity entity, Page<LabelEntity> page) {
        //设置分页参数，才会被Mybatis分页插件所识别，拦截SQL，再其SQL的前后加入分页SQL语句
        entity.setPage(page);
        //根据分页与查询条件进行测试数据的查询
        List<LabelEntity> list = labelDao.findList(entity);
        //将查询数据设置到分页类的List集合当中，一起返回
        page.setList(list);

        return page;
    }
}
