package com.dr.crm.service;

import com.dr.crm.pojo.Users;

public interface ILoginService {
    /**
     *登陆的查询
     * @param users
     * @return  查出来的对象
     * @throws Exception
     */
    Users selectLoginService(Users users)throws  Exception;
}
