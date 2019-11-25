package com.zhg.javakc.modules.supermarket.procurement.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.supermarket.procurement.entity.ProcurementEntity;


import java.util.List;

public interface ProcurementDao extends BaseDao<ProcurementEntity>{

    public List<ProcurementEntity> search(ProcurementEntity procurementEntity);

}
