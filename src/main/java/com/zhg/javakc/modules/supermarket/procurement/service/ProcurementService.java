package com.zhg.javakc.modules.supermarket.procurement.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supermarket.procurement.dao.ProcurementDao;
import com.zhg.javakc.modules.supermarket.procurement.entity.ProcurementEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ProcurementService extends BaseService<ProcurementDao, ProcurementEntity> {


    @Autowired
    private ProcurementDao procurementDao;

    public Page<ProcurementEntity> query(ProcurementEntity procurementEntity, Page<ProcurementEntity> page){


        List<ProcurementEntity> procurementList= procurementDao.findList(procurementEntity);
        page.setList(procurementList);
        return page ;
    }

    public List<ProcurementEntity> search(ProcurementEntity procurementEntity){
        System.out.println("进入service     search");



        List<ProcurementEntity> procurementList= procurementDao.search(procurementEntity);
        System.out.println("procurementList"+procurementList);



        return procurementList ;
    }





}
