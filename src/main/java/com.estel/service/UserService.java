package com.estel.service;

import com.estel.model.UserModel;
import com.estel.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    UserRepository userRepository;
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserModel user = userRepository.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        return user;
    }

    public UserModel findUserById(Long userId) {
        Optional<UserModel> userFromDb = userRepository.findById(userId);
        return userFromDb.orElse(new UserModel());
    }

    public List<UserModel> allUsers() {
        return userRepository.findAll();
    }

    public boolean saveUser(UserModel user) {
        UserModel userFromDb = userRepository.findByUsername(user.getUsername());
        if (userFromDb != null) {
            return false;
        }
        user.setRole(UserModel.Role.USER.toString());
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        userRepository.save(user);
        return true;

    }

    public void deleteUser(Long userID) {
        if (userRepository.findById(userID).isPresent()) {
            userRepository.deleteById(userID);
        }
    }

    public void changeRole(Long userID, String userRole) {
        if (userRepository.findById(userID).isPresent()) {
            UserModel user = userRepository.getOne(userID);
            if (userRole.equals(UserModel.Role.USER.toString())) {
                user.setRole(UserModel.Role.ADMIN.toString());
            } else {
                user.setRole(UserModel.Role.USER.toString());
            }
            userRepository.save(user);
        }
    }
}
