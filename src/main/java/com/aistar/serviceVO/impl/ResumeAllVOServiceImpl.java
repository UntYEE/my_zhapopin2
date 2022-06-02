package com.aistar.serviceVO.impl;

import com.aistar.mapper.ResumeMapper;
import com.aistar.pojo.*;
import com.aistar.pojoVO.ResumeAllVO;
import com.aistar.service.*;
import com.aistar.serviceVO.ResumeAllVOService;
import com.aistar.util.ServerResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ResumeAllVOServiceImpl implements ResumeAllVOService {
    private ResumeService resumeService;
    private HonorService honorService;
    private WorkExperienceService workExperienceService;
    private ProjectExperienceService projectExperienceService;
    private SkillService skillService;

    @Autowired
    public ResumeAllVOServiceImpl(ResumeService resumeService, HonorService honorService, WorkExperienceService workExperienceService, ProjectExperienceService projectExperienceService, SkillService skillService) {
        this.resumeService = resumeService;
        this.honorService = honorService;
        this.workExperienceService = workExperienceService;
        this.projectExperienceService = projectExperienceService;
        this.skillService = skillService;
    }

    @Override
    public ServerResponse getAllResume(Integer resumeId) {
        Resume resume = (Resume) resumeService.getById(resumeId).getData();

        List<WorkExperience> workExperienceList = (List<WorkExperience>) (workExperienceService.getByResumeId(resumeId).getData());
        List<ProjectExperience> projectExperienceList = (List<ProjectExperience>) projectExperienceService.getByResumeId(resumeId).getData();
        List<Skill> skillList = (List<Skill>) skillService.getByResumeId(resumeId).getData();
        List<Honor> honorList = (List<Honor>) honorService.getByResumeId(resumeId).getData();
        ResumeAllVO resumeAllVO = new ResumeAllVO(resume, workExperienceList, projectExperienceList, skillList, honorList);
        if (resume != null)
            return ServerResponse.getSuccess(resumeAllVO);
        return ServerResponse.getFailed();
    }

    @Override
    public ServerResponse deleteAllResume(Integer resumeId) {
        workExperienceService.deleteByResumeId(resumeId);
        projectExperienceService.deleteByResumeId(resumeId);
        skillService.deleteByResumeId(resumeId);
        honorService.deleteByResumeId(resumeId);
        return resumeService.delete(resumeId);
    }
}
