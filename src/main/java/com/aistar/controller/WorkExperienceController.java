package com.aistar.controller;

import com.aistar.pojo.WorkExperience;
import com.aistar.service.WorkExperienceService;
import com.aistar.util.ServerResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/resume/{resumeId}/work_exp")
public class WorkExperienceController {
    private WorkExperienceService workExperienceService;

    @Autowired
    public WorkExperienceController(WorkExperienceService workExperienceService) {
        this.workExperienceService = workExperienceService;
    }

    @RequestMapping
    @ResponseBody
    public ServerResponse getResumeAllVO(@PathVariable("resumeId") Integer resumeId) {
        return workExperienceService.getByResumeId(resumeId);
    }

    @RequestMapping("{id}")
    @ResponseBody
    public ServerResponse getResume(@PathVariable("id") Integer id) {
        return workExperienceService.getById(id);
    }

    @RequestMapping("/del/{id}")
    @ResponseBody
    public ServerResponse delete(@PathVariable("id") Integer id) {
        return workExperienceService.delete(id);
    }

    @RequestMapping("/modify/{id}")
    @ResponseBody
    public ServerResponse modify(@PathVariable("id") Integer id, WorkExperience workExperience) {
        workExperience.setWorkExperiId(id);
        return workExperienceService.modify(workExperience);
    }

    @RequestMapping("/add")
    @ResponseBody
    public ServerResponse add(WorkExperience workExperience) {
        return workExperienceService.add(workExperience);
    }

}
