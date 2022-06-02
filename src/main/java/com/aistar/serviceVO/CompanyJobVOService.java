package com.aistar.serviceVO;

import com.aistar.util.ServerResponse;

import java.math.BigDecimal;

public interface CompanyJobVOService {
    //条件查询
    ServerResponse getJobByConditions(Integer publishDay, BigDecimal minSalary,
                                      BigDecimal maxSalary, String workYear,
                                      String keywords, String eduRequest,
                                      Integer pageNum);
    ServerResponse getJobAll(Integer jobId);
}
