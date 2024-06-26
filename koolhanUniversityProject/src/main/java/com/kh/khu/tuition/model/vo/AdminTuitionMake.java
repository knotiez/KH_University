package com.kh.khu.tuition.model.vo;

import java.sql.Date;

import com.kh.khu.student.model.vo.Student;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class AdminTuitionMake {
	
	private int ttNo; // 고지서 번호
	private Date tbOpen; // 납부 시작날짜
	private Date tbClose; // 납부 마감날짜
	private Date tbInsert; // 생성날짜
	private Date tbUpdate; // 수정날짜
	private int tbPrice;  // 등록금
	private int tbSemester; // 학기
	

	
	
}
