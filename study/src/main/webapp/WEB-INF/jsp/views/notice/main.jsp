<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>
	<div class="container">
		<div class="search-notice pull-right">
			<input type="text" class="search-form" autocomplete="off"
				placeholder="Search"> <i class="fa fa-search"></i>
		</div>
		<div class="divTable">
			<div class="divTableBody">
				<div class="divTableRow">
					<div class="divTableCell orderCell">순번</div>
					<div class="divTableCell subjectCell">제목</div>
					<div class="divTableCell dateCell">날짜</div>
					<div class="divTableCell writerCell">작성자</div>
					<div class="divTableCell hitsCell">조회수</div>
				</div>
				<c:forEach var="contents" items="${noticeList}">
					<div class="divTableRow">
						<div class="divTableCell orderCell">${contents.id}</div>
						<div class="divTableCell subjectCell">${contents.title}</div>
						<div class="divTableCell dateCell">${contents.inputDate}</div>
						<div class="divTableCell writerCell">${contents.inputUser}</div>
						<div class="divTableCell hitsCell">${contents.hit}</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="pull-right">
			<ul class="nav navbar-nav post-nav">
				<li><a href="/notice/create"><i class="fa fa-tag"></i>Creative</a></li>
				<li><a href="#"><i class="fa fa-pencil-square-o"></i>Edit</a></li>
				<li><a href="#"><i class="fa fa-times"></i>Delete</a></li>
			</ul>
		</div>
	</div>

	<div class="blog-pagination">
		<ul class="pagination">
			<li><a href="#">left</a></li>
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">6</a></li>
			<li><a href="#">7</a></li>
			<li><a href="#">8</a></li>
			<li><a href="#">9</a></li>
			<li><a href="#">right</a></li>
		</ul>
	</div>
</body>
<!-- DivTable.com -->