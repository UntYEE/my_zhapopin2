package com.aistar.service;

import com.aistar.pojo.ResumeDeliveryRecord;
import com.aistar.util.ServerResponse;

public interface ResumeDeliveryRecordService {
    ServerResponse getByCustomerId(Integer custId);
    ServerResponse add(ResumeDeliveryRecord resumeDeliveryRecord);
    ServerResponse getByJobId(Integer jobId);
}
