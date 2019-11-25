package com.zhg.javakc.modules.test.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.test.dao.TestDao;
import com.zhg.javakc.modules.test.entity.TestEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yang
 * @version v0.0.1
 * @date 2019/11/19 12:36
 */
@Service
public class TestService extends BaseService<TestDao, TestEntity> {
    @Autowired
    private TestDao testDao;

    public Page<TestEntity> queryTest(TestEntity testEntity,Page<TestEntity> page){
        //设置分页参数，才会被Mybatis分页插件所识别，拦截SQL，再其SQL的前后加入分页SQL语句
        testEntity.setPage(page);
        //根据分页与查询条件进行测试数据的查询
        List<TestEntity> list=testDao.findList(testEntity);
        //将查询数据设置到分页类的List集合当中，一起返回
        page.setList(list);

        return page;
    }
}
