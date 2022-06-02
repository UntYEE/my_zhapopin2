package com.aistar.service.impl;

import com.aistar.mapper.ResumeDeliveryRecordMapper;
import com.aistar.pojo.ResumeDeliveryRecord;
import com.aistar.pojo.ResumeDeliveryRecordExample;
import com.aistar.service.ResumeDeliveryRecordService;
import com.aistar.util.ServerResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ResumeDeliveryRecordServiceImpl implements ResumeDeliveryRecordService {
    private ResumeDeliveryRecordMapper resumeDeliveryRecordMapper;

    @Autowired
    public ResumeDeliveryRecordServiceImpl(ResumeDeliveryRecordMapper resumeDeliveryRecordMapper) {
        this.resumeDeliveryRecordMapper = resumeDeliveryRecordMapper;
    }

    @Override
    public ServerResponse getByCustomerId(Integer custId) {
        ResumeDeliveryRecordExample example = new ResumeDeliveryRecordExample();
        example.createCriteria().andCustIdEqualTo(custId).andDeliveryStatusEqualTo(0);
        List<ResumeDeliveryRecord> resumeDeliveryRecordList = resumeDeliveryRecordMapper.selectByExample(example);
        if (resumeDeliveryRecordList != null)
            return ServerResponse.getSuccess(resumeDeliveryRecordList);
        return ServerResponse.getFailed();
    }

    @Override
    public ServerResponse add(ResumeDeliveryRecord resumeDeliveryRecord) {
        resumeDeliveryRecord.setDeliveryTime(new Date());
        resumeDeliveryRecord.setDeliveryStatus(0);
        int rows = resumeDeliveryRecordMapper.insert(resumeDeliveryRecord);
        if (rows > 0)
            return ServerResponse.addSuccess();
        return ServerResponse.addFailed();
    }

    @Override
    public ServerResponse getByJobId(Integer jobId) {
        ResumeDeliveryRecordExample example = new ResumeDeliveryRecordExample();
        example.createCriteria().andJobIdEqualTo(jobId);
        List<ResumeDeliveryRecord> resumeDeliveryRecordList = resumeDeliveryRecordMapper.selectByExample(example);
        if (resumeDeliveryRecordList != null && resumeDeliveryRecordList.size() > 0)
            return ServerResponse.getSuccess(resumeDeliveryRecordList);
        return ServerResponse.getFailed();
    }


}
