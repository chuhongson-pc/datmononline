<%@page import="model.bean.KHACHHANG"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="model.bean.QUANTRI"%>
<link rel="stylesheet"	href="font-awesome-4.4.0/css/font-awesome.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<html>
<body>
	<div id="wrapper">
		<div id="header">
			<div id="top_nav">
				<ul>
					<li><a href="ThanhToanOnlineServlet"><i class="fa fa-shopping-cart"> </i>
					My Cart </a></li>
				</ul>
			</div>
			<div id="logoBar">
				<div id="logo">
					<a href="TrangChu" title="Đặt món"><img src="images/promotion/LOGO.png"></a>
				</div>
				<div id="search">
					<form method="post" action="SanPham" name="TimKiem">
						<input type="text" placeholder="Search fast foods ..."
							name="txtSearch"> <a href="javascript:TimKiem.submit()">Search</a>
					</form>
				</div>
			</div>
			<div id="top_menu">
				<ul>
					<li><a href="TrangChu"> Trang chủ</a></li>
					<li><a href="SanPham"> Giới thiệu </a></li>
					<li><a href="SanPham"> Sản phẩm </a></li>
					<li><a href="SanPham"> Liên hệ </a></li>
				</ul>
				<div id="hotline">(+84) 1657.525.868</div>
			</div>
		</div>