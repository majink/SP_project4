<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.example.sp_project4.BoardDAO, com.example.sp_project4.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Page</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
</head>
<body>

<%
    BoardDAO boardDAO = new BoardDAO();
    String id = request.getParameter("id");
    BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
    request.setAttribute("vo", u);
%>

<h1>View Page</h1>
<table id = list>
    <tr>
        <td>Id </td>
        <td>Title</td>
        <td>Writer</td>
        <td>Content</td>
    </tr>
    <tr>
        <td>${vo.getSeq()}</td>
        <td>${vo.getTitle()}</td>
        <td>${vo.getWriter()}</td>
        <td>${vo.getContent()}</td>
    </tr>
</table>
<br>
<input type="button" value="back to list" onclick="history.back()"/>

</body>
</html>
