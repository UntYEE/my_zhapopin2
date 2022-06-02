package com.aistar.serviceVO.impl;

import com.aistar.mapper.CompanyMapper;
import com.aistar.mapper.JobMapper;
import com.aistar.mapper.ResumeDeliveryRecordMapper;
import com.aistar.mapper.ResumeMapper;
import com.aistar.pojo.*;
import com.aistar.pojoVO.ResumeJobCompanyRDRVO;
import com.aistar.serviceVO.ResumeJobCompanyRDRVOService;
import com.aistar.util.ServerResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ResumeJobCompanyRDRVOServiceImpl implements ResumeJobCompanyRDRVOService {
    private ResumeMapper resumeMapper;
    private JobMapper jobMapper;
    private CompanyMapper companyMapper;
    private ResumeDeliveryRecordMapper resumeDeliveryRecordMapper;

    @Autowired
    public ResumeJobCompanyRDRVOServiceImpl(ResumeMapper resumeMapper, JobMapper jobMapper, CompanyMapper companyMapper, ResumeDeliveryRecordMapper resumeDeliveryRecordMapper) {
        this.resumeMapper = resumeMapper;
        this.jobMapper = jobMapper;
        this.companyMapper = companyMapper;
        this.resumeDeliveryRecordMapper = resumeDeliveryRecordMapper;
    }

    @Override
    public ServerResponse getByCustomerId(Integer customerId) {//根据用户id查出相关的信息  渲染到投递的简历部分
        ResumeDeliveryRecordExample resumeDeliveryRecordExample = new ResumeDeliveryRecordExample();
        resumeDeliveryRecordExample.createCriteria().andCustIdEqualTo(customerId);
        List<ResumeDeliveryRecord> resumeDeliveryRecordList = resumeDeliveryRecordMapper.selectByExample(resumeDeliveryRecordExample);
        if (resumeDeliveryRecordList != null && resumeDeliveryRecordList.size() > 0) {
            List<ResumeJobCompanyRDRVO> resumeJobCompanyRDRVOList = new ArrayList<>();
            for (ResumeDeliveryRecord rdr : resumeDeliveryRecordList) {
                Resume resume = resumeMapper.selectByPrimaryKey(rdr.getResumeId());
                Job job = jobMapper.selectByPrimaryKey(rdr.getJobId());
                Company company = companyMapper.selectByPrimaryKey(job.getCompanyId());
                resumeJobCompanyRDRVOList.add(new ResumeJobCompanyRDRVO(resume, job, company, rdr));
            }
            return ServerResponse.getSuccess(resumeJobCompanyRDRVOList);
        }
        return ServerResponse.getFailed();
    }
}
