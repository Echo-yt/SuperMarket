package com.zhg.javakc.modules.supermarket.supplier.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supermarket.supplier.dao.SupplierDao;
import com.zhg.javakc.modules.supermarket.supplier.entity.SupplierEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SupplierService extends BaseService<SupplierDao, SupplierEntity> {

    @Autowired
    SupplierDao supplierDao;

    public Page<SupplierEntity> querySupplier(SupplierEntity supplierEntity,Page<SupplierEntity> page){
        supplierEntity.setPage(page);
        List<SupplierEntity> supplierList = supplierDao.findList(supplierEntity);
        page.setList(supplierList);
        return page;
    }
}
