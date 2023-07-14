package com.yoong.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
   
   @Autowired
   private BoardDAO boardDAO;
   //Controeller -> Service -> DAP -> sqlSession ->DB
}