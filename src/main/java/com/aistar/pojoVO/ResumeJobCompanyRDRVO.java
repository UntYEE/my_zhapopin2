package com.aistar.pojoVO;

import com.aistar.pojo.Company;
import com.aistar.pojo.Job;
import com.aistar.pojo.Resume;
import com.aistar.pojo.ResumeDeliveryRecord;

public class ResumeJobCompanyRDRVO {
    private Resume resume;
    private Job job;
    private Company company;
    private ResumeDeliveryRecord resumeDeliveryRecord;

    public ResumeJobCompanyRDRVO(Resume resume, Job job, Company company, ResumeDeliveryRecord resumeDeliveryRecord) {
        this.resume = resume;
        this.job = job;
        this.company = company;
        this.resumeDeliveryRecord = resumeDeliveryRecord;
    }

    public Resume getResume() {
        return resume;
    }

    public void setResume(Resume resume) {
        this.resume = resume;
    }

    public Job getJob() {
        return job;
    }

    public void setJob(Job job) {
        this.job = job;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public ResumeDeliveryRecord getResumeDeliveryRecord() {
        return resumeDeliveryRecord;
    }

    public void setResumeDeliveryRecord(ResumeDeliveryRecord resumeDeliveryRecord) {
        this.resumeDeliveryRecord = resumeDeliveryRecord;
    }

    @Override
    public String toString() {
        return "ResumeJobCompanyRDRVO{" +
                "resume=" + resume +
                ", job=" + job +
                ", company=" + company +
                ", resumeDeliveryRecord=" + resumeDeliveryRecord +
                '}';
    }
}
