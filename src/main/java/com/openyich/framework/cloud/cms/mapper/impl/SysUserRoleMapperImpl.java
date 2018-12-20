package com.openyich.framework.cloud.cms.mapper.impl;

import org.springframework.stereotype.Component;

import com.openyich.framework.boot.jpa.mapper.impl.JpaQueryMapperImpl;
import com.openyich.framework.cloud.cms.domain.SysUserRole;
import com.openyich.framework.cloud.cms.mapper.ISysUserRoleMapper;

@Component
public class SysUserRoleMapperImpl extends JpaQueryMapperImpl<SysUserRole>
    implements
      ISysUserRoleMapper {

}
