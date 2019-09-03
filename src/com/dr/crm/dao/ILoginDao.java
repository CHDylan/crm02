package com.dr.crm.dao;

import com.dr.crm.pojo.Users;
import org.springframework.stereotype.Repository;

@Repository
public interface ILoginDao {
    /**
     * 查询用户登陆的数据
     * @param users
     * @return  返回的对象
     * @throws Exception
     */
    Users loginDao(Users users)throws  Exception;
}
