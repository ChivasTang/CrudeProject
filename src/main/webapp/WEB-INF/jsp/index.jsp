<!DOCTYPE html PUBLIC "-//W3C//DTD">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">

<title>Task Manager | HOME</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Bootsample</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="new-task">New Task</a></li>
					<li><a href="all-tasks">All Tasks</a></li>
				</ul>
			</div>
		</div>

	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container" ID="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to New Task</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_TASKS'}">
			<div class="container text-center" ID="tasksDiv"></div>
			<h3>My Tasks</h3>
			<hr>
			<div class="table-responsive">
				<table class="table table-striped table-bordered text-left">
					<thead>
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>Description</th>
							<th>Date Created</th>
							<th>Finished</th>
							<th>delete</th>
							<th>update</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach var="task" items="${tasks}">
							<tr>
								<th>${task.id}</th>
								<th>${task.name}</th>
								<th>${task.description}</th>
								<th><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
										value="${task.dateCreated}" /></th>
								<th>${task.finished}</th>
								<th><a href="update-task?id=${task.id}"><span
										class="glyphicon glyphicon-pencil"></span></a></th>
								<th><a href="delete-task?id=${task.id}"><span
										class="glyphicon glyphicon-trash"></span></a></th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_NEW' || mode=='MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Task</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-task">
					<input type="hidden" name="id" value="${task.id}" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${task.name}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Description</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="description"
								value="${task.description}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Finished</label>
						<div class="col-md-7">
							<input type="radio" class="col-sm-1" name="finished" value="true" />
							<div class="col-sm-1">Yes</div>
							<input type="radio" class="col-sm-1" name="finished"
								value="false" checked />
							<div class="col-sm-1">No</div>
						</div>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save" />
					</div>
				</form>
			</div>
		</c:when>
	</c:choose>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>