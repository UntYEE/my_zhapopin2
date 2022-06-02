package com.aistar.service;

import com.aistar.pojo.Resume;
import com.aistar.util.ServerResponse;

public interface ResumeService {
    ServerResponse add(Resume resume);
    ServerResponse modify(Resume resume);
    ServerResponse delete(Integer id);
    ServerResponse getById(Integer id);
    ServerResponse getLatestResume();
    ServerResponse getByCustomerId(Integer customerId);
}
