package cdu.zjy.service;

import cdu.zjy.dao.AdminDao;
import cdu.zjy.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

    @Autowired
    private AdminDao adminDao;

    public  Admin login(String username, String password) {
        Admin admin = adminDao.findByUsername(username);
        if (admin != null && admin.getPassword().equals(password)) {
            return admin;
        }
        return null;
    }
}
