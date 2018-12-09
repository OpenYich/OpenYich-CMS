package com.openyich.cloud.cms.mapper;

import java.util.Arrays;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.google.common.collect.Lists;
import com.openyich.cloud.cms.OpenyichCMSApplicationTests;
import com.openyich.cloud.cms.domain.SysAccessLog;
import com.openyich.cloud.cms.repository.SysAccessLogRepository;

public class SysAccessLogMapperTests extends OpenyichCMSApplicationTests {

  @Autowired
  private SysAccessLogRepository repository;

  @Test
  public void testInsertAccessLog() {
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
    repository.saveAndFlush(accessLog);

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
    repository.save(accessLog2);
  }

  @Test
  public void testFindAllAccessLog() {
    repository.findById(100L);
    
    List<Long> ids = Arrays.asList(new Long[] {100L});
    repository.findAllById(ids);
    
    repository.findAll();
  }

  @Test
  public void testDeleteAccessLogByIds() {
    List<Long> ids = Arrays.asList(new Long[] {100L});
    List<SysAccessLog> entities = Lists.newArrayList();
    ids.forEach(logId -> {
      entities.add(new SysAccessLog(logId));
    });

    repository.deleteInBatch(entities);
  }

  @Test
  public void testCleanAllAccessLog() {
    repository.deleteAllInBatch();
  }

}
