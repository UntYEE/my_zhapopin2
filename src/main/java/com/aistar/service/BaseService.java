package com.aistar.service;

import com.aistar.util.ServerResponse;


public interface BaseService<T> {
    ServerResponse add(T t);
    ServerResponse modify(T t);
    ServerResponse delete(Integer id);
    ServerResponse getById(Integer id);
    ServerResponse getByResumeId(Integer resumeId);
    ServerResponse deleteByResumeId(Integer resumeId);
}
