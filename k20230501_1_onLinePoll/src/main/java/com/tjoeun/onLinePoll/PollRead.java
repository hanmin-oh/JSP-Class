package com.tjoeun.onLinePoll;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class PollRead {
	
	//텍스트 파일을 읽어서 ArrayList에 저장해서 리턴하는 메소드
	public static ArrayList<String> pollRead(String filepath) {
		
		ArrayList<String> poll = null;
		try {
			Scanner scanner = new Scanner(new File(filepath));
			poll = new ArrayList<>();
			//파일에 끝까지 더 이상 읽을 줄이 없을 때까지 반복하며 텍스트 파일에 내용을 읽어서
			//poll에 저장
			while(scanner.hasNextLine()) {
				String str = scanner.nextLine().trim();
				if(str.length() >= 0 ) {
					poll.add(str);
				}
			}
		} catch (FileNotFoundException e) {
			System.out.println("파일 경로가 잘못되었거나 디스크에 파일이 존재하지 않습니다.");
		}
		return poll;
	}
}

