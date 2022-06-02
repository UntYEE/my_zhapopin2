package com.aistar.service;

import com.aistar.util.ServerResponse;

public interface CompanyService {
    ServerResponse getByPage(Integer pageNum, Integer pageSize);
    ServerResponse getById(Integer companyId);
}
