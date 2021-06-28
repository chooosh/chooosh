package study;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map.Entry;


public class Study_day1 {

public Study_day1(String string) {
		// TODO Auto-generated constructor stub
	}

/**
 * 1. String type의 배열 2개 만들기
 * 2. Arraylist 만들어서 1에서 만든 배열 2개를 Arraylist에 추가하기
 * 3. Arraylist에 담긴 값 출력 메소드, Arraylist 값 출력 메소드 생성
 * 4. 해당 클래스 파일 실행해보기
 */
	public String color;
	public String num;
	
	public Study_day1() {
	}
	
	
	public static void main(String[] args) {

	/**
	 * 1번
	 */
		System.out.println("------- 배열 만들기 -------");
		System.out.println("1. 첫번째 배열 : color");
		String[] color = new String[5];
		
		color[0] = "파랑";
		color[1] = "빨강";
		color[2] = "노랑";
		color[3] = "초록";
		color[4] = "검정";
		
		for(int i = 0; i < color.length; i++) {
			System.out.println(color[i]);
		}
		
		System.out.println();
		System.out.println("2. 두번째 배열 : num");
		String[] num = new String[5];
		
		num[0] = "1";
		num[1] = "2";
		num[2] = "3";
		num[3] = "4";
		num[4] = "5";
		
		for(int i = 0; i < num.length; i++) {
			System.out.println(num[i]);
		}
		
		System.out.println();
		System.out.println("------- ArrayList 만들기 -------");
		ArrayList<String> list = new ArrayList<>();
	
		list.add("파랑");
		list.add("빨강");
		list.add("노랑");
		list.add("초록");
		list.add("검정");
		list.add("1");
		list.add("2");
		list.add("3");
		list.add("4");
		list.add("5");
	
		System.out.println("1. 배열 요소의 값");
		for(int i = 0; i < list.size(); i++) {
			String ArrayColor = list.get(i);
			System.out.println(ArrayColor);
	}
		System.out.println();
		System.out.println("2. 배열 크기의 값");
		System.out.println(list.size());
		
	
	/**
	 * 2번
	 */
	HashMap<String, Integer> map = new HashMap<String, Integer>();
	
	map.put("파랑", 1);
	map.put("빨강", 2);
	map.put("노랑", 3);
	map.put("초록", 4);
	map.put("검정", 5);

	System.out.println();
	System.out.println("------- HashMap 만들기 -------");
	System.out.println("1. 전체 HashMap 출력: " + map);
	System.out.println("2. 특정 HashMap 출력: " + map.get("파랑"));
	System.out.println("3. Key 값만 출력: " + map.keySet());
	System.out.println("4. value 값만 출력: " + map.values());

//	entry를 사용해서 key값, value 값 따로 출력
//	for(Entry<String, Integer> entry : map.entrySet()) {
//		System.out.println("key 값 : " + entry.getKey() + ", value 값 : " + entry.getValue());
//	}
//
//	for(String key : map.keySet()) {
//		System.out.println(key);
//	}
//
//	for(Integer value : map.values()) {
//		System.out.println(value);
//		}
	
	/**
	 * 3번
	 */
		System.out.println();
		System.out.println("------- 2차원 배열 만들기 -------");
		int[][] arr = {{10, 20, 30} , {1, 2, 3}};
		
		for(int i = 0; i < arr.length; i++) {
			for(int j = 0; j < arr[i].length; j++) {
				System.out.println(arr[i][j]);
			}
			System.out.println();
		}
		
//		이차원배열 각 행의 길이와 열의 길이 출력하기 
//		int[][] arr2 = new int[3][3];
//		
//		for(int i = 0; i < arr2.length; i++) {
//			for(int j = 0; j < arr2[i].length; j++) {
//				System.out.println(arr2[i][j]);
//			}
//			System.out.println();
//	}
}
	
}