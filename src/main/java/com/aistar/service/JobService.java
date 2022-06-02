package com.aistar.service;

import com.aistar.util.ServerResponse;


public interface JobService {
    ServerResponse getByPage(Integer pageNum, Integer pageSize);
    ServerResponse getById(Integer jobId);
    public ServerResponse getByCompanyId(Integer companyId);
}
