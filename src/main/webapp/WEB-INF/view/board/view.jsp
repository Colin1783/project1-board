<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>


<%--<div class="row justify-content-center" style="background-color: gray; height: 100px;">--%>
<%--    <div class="col-6" style="background-color: red"></div>--%>
<%--    <div class="col-4" style="background-color: blue"></div>--%>
<%--    <div class="col-2" style="background-color: green"></div>--%>
<%--</div>--%>
<div class="container">
    <c:import url="/WEB-INF/fragment/navbar.jsp"></c:import>

    <div class="row justify-content-center">
    <div class="col-6">
<h3>${board.id} 번 게시물</h3>
<div class="mb-3">
    <label for="inputTitle" class="form-label">제목</label>

    <input class="form-control" id="inputTitle" type="text" value="${board.title}" readonly>
</div>
<div class="mb-3">
    <label for="inputWriter" class="form-label">작성자</label>
    <input class="form-control" id = "inputWriter" type="text" readonly value="${board.writer}">
</div>
<div class="mb-3">
    <label for="inputInserted" class="form-label">작성일시</label>
    <input class="form-control" id="inputInserted" type="datetime-local" readonly value="${board.inserted}">
</div>

<div class="mb-3">
    <button form="formDelete" class="btn btn-danger">삭제</button>
    <a href="/modify?id=${board.id}" class="btn btn-secondary">수정</a>
</div>

    </div>
</div>
</div>
<div style="display: none">
    <form id="formDelete" action="/delete" method="post" onsubmit="return confirm('삭제 하시겠습니까?')">
        <input type="hidden" name="id" value="${board.id}">
    </form>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
