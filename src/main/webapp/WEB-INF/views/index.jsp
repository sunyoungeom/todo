<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>TODO</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
		crossorigin="anonymous">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/dist/css/bootstrap-icons.min.css"
		rel="stylesheet">
</head>

<body class="d-flex flex-column align-items-center justify-content-center vh-100">
	<div class="container">
		<div class="row align-items-center justify-content-center">
			<div class="col-12 col-md-4 mb-3 mb-md-0 text-center">
				<h1>TODO🐥</h1>
			</div>
			<div class="col-12 col-md-4 d-flex flex-column align-items-center">
		        <form action="/user/login" method="GET" class="w-100">
					<button type="submit" class="btn btn-lg btn-warning w-100 mb-3">Login</button>
				</form>
		        <form action="/user/join" method="GET" class="w-100">
					<button type="submit" class="btn btn-lg btn-secondary w-100">Join</button>
				</form>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>

</html>