package com.insoul.copartner.dao;

import java.util.List;

import com.insoul.copartner.dao.criteria.RoleCriteria;
import com.insoul.copartner.domain.StartupRole;

public interface IStartupRoleDao extends IBaseDao<StartupRole, Long> {

    List<StartupRole> getAllListed();
    
    List<StartupRole> query(RoleCriteria criteria);
}
