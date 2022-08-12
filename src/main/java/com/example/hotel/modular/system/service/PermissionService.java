package com.example.hotel.modular.system.service;



import com.example.hotel.modular.system.model.Permission;
import com.example.hotel.modular.system.model.User;

import java.util.List;

/**
 * @Auther: luhailiang
 * @Date: 2022-08-15 4:34
 * @Description: PermissionService
 */
public interface PermissionService {

    /**
     获取用户权限信息
     */
    List<Permission> queryPermissionsByUser(User user);

    /**
     获取所有权限列表
     */
    List<Permission> queryAll();

    /**
    通过角色id删除角色权限表的关联关系
     */
    void deleteRolePermissionRsByRoleId(Integer roleId);

    /**
     通过角色id查询已经分配的权限信息
     */
    List<Integer> queryPermissionIdsByRoleId(Integer roleId);
}
