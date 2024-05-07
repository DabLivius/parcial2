<%@ include file="common/header.jsp"%>
<%@ include file="common/navigation.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Adicionar Clase</div>
				<div class="panel-body">
					<form:form method="post" modelAttribute="todo">
						<form:hidden path="id" />
						<fieldset class="form-group">
							<form:label path="description">Nombre</form:label>
							<form:input path="description" type="text" class="form-control"
								required="required" />
							<form:errors path="description" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
							<form:label path="targetDate">Horario</form:label>
							<form:input path="targetDate" type="text" class="form-control"
								required="required" />
							<form:errors path="targetDate" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
							<form:label path="teacher">Docente</form:label>
							<form:input path="teacher" type="text" class="form-control"
								required="required" />
							<form:errors path="teacher" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
							<form:label path="classroom">Salon</form:label>
							<form:input path="classroom" type="text" class="form-control"
								required="required" />
							<form:errors path="classroom" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
							<form:label path="state">Estado</form:label>
							<form:select path="state" class="form-control"
								required="required">
								<form:option value="PROGRAMADA">Programada</form:option>
								<form:option value="EN_CURSO">En Curso</form:option>
								<form:option value="CANCELADA">Cancelada</form:option>
								<form:option value="APLAZADA">Aplazada</form:option>
							</form:select>
							<form:errors path="state" cssClass="text-warning" />
						</fieldset>


						<button type="submit" class="btn btn-success">Guardar</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jsp"%>