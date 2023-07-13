package com.yoong.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

// Ctrl + Shift + o --> 임포트 정리해줘요. 

@Controller
public class BoardController {
	
	//서비스와 연결하기
	@Autowired
	private BoardService boardService;
	
	
	
   // 사용자가 /board 라고 호출하면 동작할 메소드를 만들겠습니다.

   @GetMapping("/board")
   public ModelAndView board() {// 메소드 만들기
      ModelAndView mv = new ModelAndView("board"); // jsp 파일명

      //서비스에게 일 시킵니다
      List<BoardDTO> list = boardService.boardList();
      
      mv.addObject("list", list);
      
      return mv;

	}
   
   @GetMapping("/board2")
   public String board2(Model model) {
	   model.addAttribute("name", "홍길동");
	   
	   List<BoardDTO> list = new ArrayList<BoardDTO>();
	   for(int i = 1; i < 11 ; i++) {
		   BoardDTO dto = new BoardDTO(i, "제목입니다", "홍길동", "2023-07-13", i);
		   list.add(dto);
	   }
	   model.addAttribute("list", list);
	   
	   return "board2";
   }
	
	
	
	
}
