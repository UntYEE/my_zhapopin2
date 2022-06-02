package com.aistar.serviceVO;

import com.aistar.util.ServerResponse;

import java.math.BigDecimal;

public interface JobComAdminVOService {
    ServerResponse getJobAdminByPage(Integer pageNum, Integer pageSize);
}
