package com.aistar.service.impl;

import com.aistar.mapper.JobMapper;
import com.aistar.pojo.Job;
import com.aistar.pojo.JobExample;
import com.aistar.service.JobService;
import com.aistar.util.ServerResponse;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobServiceImpl implements JobService {
    private JobMapper jobMapper;

    @Autowired
    public JobServiceImpl(JobMapper jobMapper) {
        this.jobMapper = jobMapper;
    }

    @Override
    public ServerResponse getByPage(Integer pageNum, Integer pageSize) {
        Page<Job> page = PageHelper.startPage(pageNum, pageSize);
        JobExample example = new JobExample();
        example.createCriteria().andStatusEqualTo(0);
        example.setOrderByClause("job_publish_time desc");
        List<Job> jobList = jobMapper.selectByExample(example); // select
        if (jobList != null && jobList.size() > 0)
            return ServerResponse.getSuccess(page.toPageInfo());
        return ServerResponse.getFailed();
    }
    @Override
    public ServerResponse getById(Integer jobId) {
        Job job = jobMapper.selectByPrimaryKey(jobId);// select
        if (job != null)
            return ServerResponse.getSuccess(job);
        return ServerResponse.getFailed();
    }

    @Override
    public ServerResponse getByCompanyId(Integer companyId){
        JobExample example = new JobExample();
        example.createCriteria().andCompanyIdEqualTo(companyId).andStatusEqualTo(0);
        example.setOrderByClause("job_publish_time desc");
        List<Job> jobs = jobMapper.selectByExample(example);
        if (jobs != null && jobs.size()>0)
            return ServerResponse.getSuccess(jobs);
        return ServerResponse.getFailed();
    }

}
