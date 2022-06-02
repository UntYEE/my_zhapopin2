package com.aistar.service;

import com.aistar.pojo.Customer;
import com.aistar.util.ServerResponse;

public interface CustomerService {
    //    public ServerResponse getByAccountAndPwd(Integer type,String account,String password);
    ServerResponse getByUsernameAndPwd(String username, String password, Integer userType);

    ServerResponse getByTelno(Long custTelno);

    ServerResponse add(Customer customer);
}
