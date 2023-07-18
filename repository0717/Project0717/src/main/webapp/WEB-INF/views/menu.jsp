<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<nav>
		<ul>
			<li onclick="link('')">메인</li>
			<li onclick="link('board')">Mike</li>
			<li onclick="link('notice')">Sullivan</li>
			<li onclick="link('mike')">Boo</li>		
			<li onclick="link('monsters')">Monsters, inc.</li>
			<li onclick="link('mooni')">문의사항</li>		
		</ul>
	</nav>
	<div style="height: 50px; width: 100%;"></div>
	<script>
	function link(url){
		location.href="./"+url;
	}
	</script>