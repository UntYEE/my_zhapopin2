package com.aistar;

import com.aistar.controller.ResumeDeliveryRecordController;
import com.aistar.service.ResumeDeliveryRecordService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ZhaopinApplicationTests {
    @Autowired
    private ResumeDeliveryRecordController resumeDeliveryRecordController;


    @Test
    void contextLoads() {
        System.out.println(resumeDeliveryRecordController);
    }

}
