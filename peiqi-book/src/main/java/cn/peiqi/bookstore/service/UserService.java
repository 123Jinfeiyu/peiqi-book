package cn.peiqi.bookstore.service;

import cn.peiqi.bookstore.domain.User;

import java.util.List;


public interface UserService {
    List<User> selectUserAll(User user);

    int updateUser(User user);

    int insertUser(User user);

    int deleteUser(int id);

    User selectUserById(int id);
}
