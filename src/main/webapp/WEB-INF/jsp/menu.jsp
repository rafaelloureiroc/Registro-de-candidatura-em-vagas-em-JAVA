<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
	id="mainNav">
	<div class="container px-4 px-lg-5">
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ms-auto my-2 my-lg-0">

				<c:if test="${not empty user}">
					<li class="nav-item"><a class="nav-link" href="/usuarios">Empresas</a></li>
					<li class="nav-item"><a class="nav-link" href="/candidatos">Candidatos</a></li>
					<li class="nav-item"><a class="nav-link" href="/vagas">Vagas</a></li>
					<li class="nav-item"><a class="nav-link" href="/vagaCandidatos">Candidatar-se em vagas</a></li>
				</c:if>



				<c:if test="${empty user}">
					<li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
					<li class="nav-item"><a class="nav-link" href="/usuario">Signup</a></li>
				</c:if>

				<c:if test="${not empty user}">
					<li class="nav-item"><a class="nav-link" href="/logout">Logout,
							${user.nome}</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</nav>
