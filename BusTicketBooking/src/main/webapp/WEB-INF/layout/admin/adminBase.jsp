<%-- 
    Document   : adminBase
    Created on : Aug 5, 2022, 3:58:00 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>
            <tiles:insertAttribute name="adminTitle"/>
        </title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    </head>

    <body>
        <div class="container">
            <!-- Admin header-->
            <tiles:insertAttribute name="adminHeader"/>
            <!-- Admin content-->
            <tiles:insertAttribute name="adminContent"/>
            <!-- Admin footer-->
            <tiles:insertAttribute name="adminFooter"/>
        </div>
    </body>
</html>
