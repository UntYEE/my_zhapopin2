package com.aistar.serviceVO;

import com.aistar.util.ServerResponse;

public interface ResumeAllVOService {
    ServerResponse getAllResume(Integer resumeId);
    ServerResponse deleteAllResume(Integer resumeId);
}
