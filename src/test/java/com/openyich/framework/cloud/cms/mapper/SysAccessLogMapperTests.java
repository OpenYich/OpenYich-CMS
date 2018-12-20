package com.openyich.framework.cloud.cms.mapper;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.google.common.collect.Lists;
import com.openyich.framework.cloud.cms.OpenyichCMSApplicationTests;
import com.openyich.framework.cloud.cms.domain.SysAccessLog;
import com.openyich.framework.cloud.cms.mapper.ISysAccessLogMapper;

public class SysAccessLogMapperTests extends OpenyichCMSApplicationTests {

  @Autowired
  private ISysAccessLogMapper mapper;

  @Test
  public void testSaveAll() {
    List<SysAccessLog> list = Lists.newArrayList();
    SysAccessLog accessLog = new SysAccessLog();
    accessLog.setLoginName("admin");
    accessLog.setDeptName("研发部门");
    accessLog.setLoginIp("183.192.30.28");
    accessLog.setLoginLocation("上海");
    accessLog.setBrowser("Chrome");
    accessLog.setOs("Windows 10");
    accessLog.setStatus(1); // 登录状态（0未知 1成功 2失败）
    accessLog.setDeleted(true);
    accessLog.setRemark("登录成功");
    list.add(accessLog);

    SysAccessLog accessLog2 = new SysAccessLog();
    accessLog2.setLoginName("yq");
    accessLog2.setDeptName("测试部门");
    accessLog2.setLoginIp("223.104.211.133");
    accessLog2.setLoginLocation("上海");
    accessLog2.setBrowser("Mobile Safari");
    accessLog2.setOs("Mac OS X (iPhone)");
    accessLog2.setStatus(1); // 登录状态（0未知 1成功 2失败）
    accessLog.setDeleted(false);
    accessLog2.setRemark("登录成功");
    list.add(accessLog2);
    
    mapper.saveAll(list);
  }

}
