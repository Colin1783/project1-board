<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>

<div class="container">
    <c:import url="/WEB-INF/fragment/navbar.jsp"></c:import>

    <div class="row justify-content-center">
        <div class="col-6">

<h3>새 게시물 작성</h3>

<form action="/add" method="post">
    <div>
        <label for="inputTitle" class="form-label">제목</label>
        <input class="form-control"id="inputTitle" type="text" name="title" required>
    </div>
    <div>
        <label for="inputContent" class="form-label">본문</label>
        <textarea class="form-control" id="inputContent" name="content" cols="30" rows="10" required></textarea>
    </div>
    <div>
        <label for="inputWriter" class="form-label">작성자</label>
        <input class="form-control" id="inputWriter" type="text" name="writer" required>
    </div>
    <div>
        <button class="btn btn-outline-success">저장</button>
    </div>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

        </div>
        </div>
        </div>
</body>
</html>
