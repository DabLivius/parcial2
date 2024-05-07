<%@ include file="common/header.jsp"%>
<%@ include file="common/navigation.jsp"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/add-todo">Adicionar
			Clase</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>Lista de Clases</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width="20%">Nombre Asignatura</th>
						<th width="20%">Horario</th>
						<th width="20%">Docente a cargo</th>
						<th width="10%">Salon</th>
						<th width="20%">Estado</th>
						<th width="10%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">
						<tr>
							<td>${todo.description}</td>
							<td><fmt:formatDate value="${todo.targetDate}"
									pattern="dd/MM/yyyy" /></td>
							<td>${todo.teacher}</td>
							<td>${todo.classroom}</td>
							<td>${todo.state}</td>
							<td><a type="button" class="btn btn-success"
								href="/update-todo?id=${todo.id}">Actualizar</a> <a
								type="button" class="btn btn-warning"
								href="/delete-todo?id=${todo.id}">Eliminar</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jsp"%>