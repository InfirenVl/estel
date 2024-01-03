package com.estel.service;


import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.estel.config.YandexObjectStorageConfig;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

//@Service
//@RequiredArgsConstructor
//public class YandexObjectStorageService {
//
//    YandexObjectStorageConfig yandexObjectStorageConfig;
//
//    @Value("${aws.s3.bucketName}")
//    private String bucketName;
//
//
////    public String uploadFile(MultipartFile file) throws IOException {
////        String key = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
////
////        PutObjectRequest putObjectRequest = PutObjectRequest )
////                .bucket(bucketName)
////                .key(key)
////                .build();
////
////        PutObjectResponse response = s3Client.putObject(putObjectRequest, file.getInputStream());
////
////        return s3Client.utilities().getUrl(builder -> builder.bucket(bucketName).key(key)).toExternalForm();
////    }
//
//    //System.out.format("Uploading %s to S3 bucket %s...\n", file_path, bucket_name);
////    try {
////        yandexObjectStorageConfig.s3.putObject(bucket_name, key_name, new File(file_path));
////    } catch (AmazonServiceException e) {
////        System.err.println(e.getErrorMessage());
////        System.exit(1);
////    }
////        System.out.println("Done!");
//
//}
@Service
public class YandexObjectStorageService {

    //    @Autowired
    YandexObjectStorageConfig yandexObjectStorageConfig;
    @Value("${aws.s3.bucketName}")
    private String bucketName;

    @Value("${aws.endpoint}") // Если у вас есть свой собственный endpoint для S3, укажите его
    private String endpointUrl;

    @Value("${aws.filePath}")
    private String filePath;


    public String uploadFile(MultipartFile file) throws IOException {
        String key = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
//
//        try (InputStream inputStream = file.getInputStream()) {
//
//            yandexObjectStorageConfig.s3.putObject(bucketName, key, new File(file_path));
//        } catch (AmazonServiceException e) {
//            System.err.println(e.getErrorMessage());
//            System.exit(1);
//        }
//    }

        try {
            //This code expects that you have AWS credentials set up per:
            // https://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/setup-credentials.html

            // Upload a text string as a new object.
            yandexObjectStorageConfig.s3.putObject(bucketName, key, "Uploaded String Object");

            // Upload a file as a new object with ContentType and title specified.
            PutObjectRequest request = new PutObjectRequest(bucketName, key, new File(filePath));
            ObjectMetadata metadata = new ObjectMetadata();
            metadata.setContentType("plain/text");
            metadata.addUserMetadata("title", "someTitle");
            request.setMetadata(metadata);
            yandexObjectStorageConfig.s3.putObject(request);
        } catch (AmazonServiceException e) {
            // The call was transmitted successfully, but Amazon S3 couldn't process
            // it, so it returned an error response.
            e.printStackTrace();
        } catch (SdkClientException e) {
            // Amazon S3 couldn't be contacted for a response, or the client
            // couldn't parse the response from Amazon S3.
            e.printStackTrace();
        }
        
        // Строим URL к загруженному файлу
        String fileUrl = endpointUrl + "/" + bucketName + "/" + key;
        return fileUrl;

    }
}
