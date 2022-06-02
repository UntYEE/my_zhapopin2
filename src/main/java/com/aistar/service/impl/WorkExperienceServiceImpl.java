package com.aistar.service.impl;

import com.aistar.mapper.WorkExperienceMapper;
import com.aistar.pojo.WorkExperience;
import com.aistar.pojo.WorkExperienceExample;
import com.aistar.service.WorkExperienceService;
import com.aistar.util.ServerResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WorkExperienceServiceImpl implements WorkExperienceService {
    private WorkExperienceMapper workExperienceMapper;

    @Autowired
    public WorkExperienceServiceImpl(WorkExperienceMapper workExperienceMapper) {
        this.workExperienceMapper = workExperienceMapper;
    }

    @Override
    public ServerResponse add(WorkExperience workExperience) {
        workExperience.setStatus(0);
        int rows = workExperienceMapper.insert(workExperience);
        if (rows > 0)
            return ServerResponse.addSuccess();
        return ServerResponse.addFailed();
    }

    @Override
    public ServerResponse modify(WorkExperience workExperience) {
        int rows = workExperienceMapper.updateByPrimaryKeySelective(workExperience);
        if (rows > 0)
            return ServerResponse.modifySuccess();
        return ServerResponse.modifyFailed();
    }

    @Override
    public ServerResponse delete(Integer id) {
        WorkExperienceExample example = new WorkExperienceExample();
        WorkExperienceExample.Criteria criteria = example.createCriteria();
        criteria.andWorkExperiIdEqualTo(id);
        WorkExperience workExperience = new WorkExperience();
        workExperience.setStatus(1);
        int rows = workExperienceMapper.updateByExampleSelective(workExperience, example);
        if (rows > 0)
            return ServerResponse.deleteSuccess();
        return ServerResponse.deleteFailed();
    }

    @Override
    public ServerResponse getById(Integer id) {
        WorkExperience workExperience = workExperienceMapper.selectByPrimaryKey(id);
        if (workExperience != null)
            return ServerResponse.getSuccess(workExperience);
        return ServerResponse.getFailed();
    }

    @Override
    public ServerResponse getByResumeId(Integer resumeId) {
        WorkExperienceExample example = new WorkExperienceExample();
        WorkExperienceExample.Criteria criteria = example.createCriteria();
        criteria.andResumeIdEqualTo(resumeId);
        criteria.andStatusEqualTo(0);
        example.setOrderByClause("work_experi_id desc");
        List<WorkExperience> workExperienceList = workExperienceMapper.selectByExample(example);
        if (workExperienceList != null && workExperienceList.size() > 0)
            return ServerResponse.getSuccess(workExperienceList);
        return ServerResponse.getFailed();
    }

    @Override
    public ServerResponse deleteByResumeId(Integer resumeId) {
        WorkExperience workExperience = new WorkExperience();
        workExperience.setStatus(1);
        WorkExperienceExample example = new WorkExperienceExample();
        WorkExperienceExample.Criteria criteria = example.createCriteria();
        criteria.andResumeIdEqualTo(resumeId);
        int rows = workExperienceMapper.updateByExampleSelective(workExperience, example);
        if (rows > 0)
            return ServerResponse.deleteSuccess();
        return ServerResponse.deleteFailed();
    }
}
