<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="it.leg.model.Admin"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../assets/css/main.css" />
<title>Area amministrativa</title>
</head>
<body>
	<div id="wrap">
	<header class="major container 75%">
		<center>
			<h1>
				<font>Benvenuto nell'area amministrativa</font>
			</h1><br>
			<h2>Area riservata!</h2>
		</center>
		<center>
			<f:view>
				<h:form>
					<b>Email: </b><h:outputText value="#{LoginController.email}" />
				</h:form>
			</f:view>
		</center>
		</header>
	</div>
	<br>
	<center>
		
		<f:view>
			<h:form>
		
		<a href="../faces/admin/newExaminationType.jsp">Amplia offerta</a><br>
		<a href="../faces/admin/newExamination.jsp">Nuova prenotazione esame</a><br>
		<div><h:commandLink value="Inserisci risultati esame" action="#{ExaminationController.examinationChoosing}"/></div>
		<a href="../faces/admin/newPatient.jsp">Nuovo paziente</a><br>
		<a href="../faces/admin/newDoctor.jsp">Nuovo medico</a><br>
		<a href="../faces/admin/newAdmin.jsp">Nuovo admin</a><br>
		<a href="../faces/admin/newConditionForType.jsp">Nuovo Prerequisito Per Tipologia</a><br>
		<h:commandLink value = "Lista Esami per Medico" action="#{DoctorController.takeDoctorList}"></h:commandLink>

			</h:form>
		</f:view>
		
		
		<br>
		<h1><a href="../faces/login.jsp">Log out</a></h1>
	</center>
</body>
</html>