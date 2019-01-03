package com.openyich.framework.cloud.cms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.openyich.framework.boot.errors.AlreadyUsedException;
import com.openyich.framework.boot.vo.ResponseVO;
import com.openyich.framework.boot.web.BaseController;
import com.openyich.framework.cloud.cms.domain.SysAccessLog;
import com.openyich.framework.cloud.cms.repository.SysAccessLogRepository;

@RestController
@RequestMapping("api/system_access_log")
public class SysAccessLogController extends BaseController {

  @Autowired
  private SysAccessLogRepository repo;

  @GetMapping("error")
  public String error() throws Exception {
    throw new AlreadyUsedException("邮箱已被使用");
  }

  @GetMapping("aaa")
  public ResponseVO<String> aaa() {
    return status(HttpStatus.BAD_REQUEST);
  }

  @GetMapping("bbb")
  public ResponseVO<String> bbb() {
    HttpHeaders headers = new HttpHeaders();
    headers.add("X-TOKEN", "1223343434");
    return ok(headers);
  }

  @GetMapping("ccc")
  public ResponseVO<List<SysAccessLog>> ccc() {
    Page<SysAccessLog> page = repo.findAll(PageRequest.of(0, 2));
    return pageable(page);
  }

}
