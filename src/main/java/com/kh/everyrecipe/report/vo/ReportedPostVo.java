package com.kh.everyrecipe.report.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Component
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ReportedPostVo {	
	private int postId;
	private String foodName ;
	private String userId;
	private String nickName;
	private int reportCnt;
	private String status;
}
