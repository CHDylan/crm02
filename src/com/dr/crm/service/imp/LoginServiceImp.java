package com.dr.crm.service.imp;

import com.dr.crm.dao.ILoginDao;
import com.dr.crm.pojo.Users;
import com.dr.crm.service.ILoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImp implements ILoginService {

    @Autowired
    private ILoginDao iLoginDao;

    @Override
    public Users selectLoginService(Users users) throws Exception {
        //调用Dao层
          //进行断言users是否有数据
        return iLoginDao.loginDao(users);
    }
}
