package cn.peiqi.bookstore.mapper;

import cn.peiqi.bookstore.domain.User;

import java.util.List;

public interface UserMapper {
    List<User> selectUserAll(User user);

    int updateUser(User user);

    int insertUser(User user);

    int deleteUser(int id);

    User selectUserById(int id);
}
