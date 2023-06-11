package cn.peiqi.bookstore.service.impl;

import cn.peiqi.bookstore.domain.User;
import cn.peiqi.bookstore.mapper.UserMapper;
import cn.peiqi.bookstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public List<User> selectUserAll(User user) {
        return userMapper.selectUserAll(user);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public int insertUser(User user) {
        return userMapper.insertUser(user);
    }

    @Override
    public int deleteUser(int id) {
        return userMapper.deleteUser(id);
    }

    @Override
    public User selectUserById(int id) {
        return userMapper.selectUserById(id);
    }
}
