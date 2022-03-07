package com.ganghwan.seoulMatjip.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

public class FileManagerService {
	
	public final static String FILE_UPLOAD_PATH = "D:\\웹프런트 조경환1105\\Seoul_MATJIP\\upload\\image/";
	
	private static Logger logger = LoggerFactory.getLogger(FileManagerService.class);
	
	// 파일 저장
	public static String saveFile(int userId, MultipartFile file) {
		
		if(file == null) {
			logger.error("FileManagerService::saveFile - 업로드 파일 없음");
			return null;
		}
		
		// 파일 경로
		// 사용자 별로 구분할 수 있도록
		// 사용자가 파일을 올린 시간으로 구분
		String directoryName = userId + "_" + System.currentTimeMillis() + "/";
		
		String filePath = FILE_UPLOAD_PATH + directoryName;
		
		// 디렉토리 생성
		File directory = new File(filePath);
		
		if(directory.mkdir() == false) {
			// 디렉토리 생성 에러
			logger.error("FileManagerService::saveFile - 디렉토리 생성 에러");
			return null;
		}
		
		// 파일 저장
		try {
			byte[] bytes = file.getBytes();
			
			//파일 저장 경로, 파일 이름 경로 관리 객체
			Path path = Paths.get(filePath + file.getOriginalFilename());
			
			// 파일 저장
			Files.write(path, bytes);
			
		} catch (IOException e) {
			
			// 파일 저장 실패
			logger.error("FileManagerService::saveFile - 파일 저장 에러");
			e.printStackTrace();
			return null;
		}
		
		// 파일 접근 가능한 주소 리턴
		return "/images/" + directoryName + file.getOriginalFilename();
	}
	
	// 파일 삭제
	public static void removeFile(String filePath) {
		
		if(filePath == null) {
			logger.error("FileManagerService::saveFile - 삭제할 파일 없음");
			return ;
		}
		
		// 삭제할 파일 경로
		String realFilePath = FILE_UPLOAD_PATH + filePath.replace("/images/", "");
		
		// 파일 지우기
		Path path = Paths.get(realFilePath);
		
		// 파일이 있는지 확인
		if(Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				logger.error("FileManagerService::saveFile - 파일 삭제 실패");
				e.printStackTrace();
			}
		}
		
		// 디렉토리 삭제(폴더)
		path = path.getParent();
		
		if(Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				logger.error("FileManagerService::saveFile - 디렉토리 삭제 실패");
				e.printStackTrace();
			}
		}
	}
}
