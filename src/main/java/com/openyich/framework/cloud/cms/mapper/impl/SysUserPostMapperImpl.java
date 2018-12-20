package com.openyich.framework.cloud.cms.mapper.impl;

import org.springframework.stereotype.Component;

import com.openyich.framework.boot.jpa.mapper.impl.JpaQueryMapperImpl;
import com.openyich.framework.cloud.cms.domain.SysUserPost;
import com.openyich.framework.cloud.cms.mapper.ISysUserPostMapper;

@Component
public class SysUserPostMapperImpl extends JpaQueryMapperImpl<SysUserPost>
    implements
      ISysUserPostMapper {

}
