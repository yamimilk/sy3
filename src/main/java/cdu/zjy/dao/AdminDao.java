package cdu.zjy.dao;

import cdu.zjy.model.Admin;

public interface AdminDao {
    Admin findByUsername(String username);
}
