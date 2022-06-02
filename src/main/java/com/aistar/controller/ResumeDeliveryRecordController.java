package com.aistar.controller;

import com.aistar.pojo.Customer;
import com.aistar.pojo.ResumeDeliveryRecord;
import com.aistar.service.ResumeDeliveryRecordService;
import com.aistar.util.ServerResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/record")
public class ResumeDeliveryRecordController {
    private ResumeDeliveryRecordService resumeDeliveryRecordService;

    @Autowired
    public ResumeDeliveryRecordController(ResumeDeliveryRecordService resumeDeliveryRecordService) {
        this.resumeDeliveryRecordService = resumeDeliveryRecordService;
    }

    @RequestMapping("/add")
    @ResponseBody
    public ServerResponse add(Integer jobId, Integer resumeId, HttpServletRequest request) {
        Customer customer = (Customer) request.getSession().getAttribute("loginCustomer");
        ResumeDeliveryRecord record = new ResumeDeliveryRecord();
        record.setCustId(customer.getCustId());
        record.setJobId(jobId);
        record.setResumeId(resumeId);
        return resumeDeliveryRecordService.add(record);
    }
    @RequestMapping("/getByJobId")
    @ResponseBody
    public ServerResponse getByJobId(Integer jobId) {
        return resumeDeliveryRecordService.getByJobId(jobId);
    }
}
