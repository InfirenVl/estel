package com.estel.service;

import com.estel.model.PostModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;


public interface FileService {
    PostModel createPost(MultipartFile resource) throws IOException;
}
