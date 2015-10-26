<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.bean.CHINHANH"%>
<%@page import="java.util.ArrayList"%>

<%@include file="FILE\HEAD.jsp"%>
<script src="js/jquery.validate.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#fThongTinDatHang").validate({
			rules : {
				hoten : {
					required : true
				},
				dienthoai : {
					required : true,
					digits : true
				},
				email : {
					email : true
				},
				diachi : {
					required : true
				},
				idChiNhanh : {
					required : true
				}
			},
			messages : {
				hoten : {
					required : "<br>Invalid name!",
				},
				dienthoai : {
					required : "<br>Invalid phone number",
					digits : "<br>Invalid format phone number"
				},
				email : {
					email : "<br>Invalid format email!",
				},
				diachi : {
					required : "<br>Invalid address",
				},
				idChiNhanh : {
					required : "<br>Chưa chọn chi nhánh",
				},
			},
			submitHandler : function(form) {
				showbox();
			}
		});
	});
</script>
<style type="text/css">
label.error {
	color: #FF0000;
}

input.error {
	border: 2px solid #FF0000;
	color: #0000FF;
	border-style: ridge;
}
</style>
<%@include file="ScriptAnimation.jsp"%>
<%-- Xử lý việc thêm một hàng mới vào giỏ --%>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('.tangItem').click(
						function() {
							window.location = "CapNhatGioHangServlet?id="
									+ this.id.slice(1) + "&soluong=1";
						});

				$('.giamItem').click(
						function() {
							window.location = "CapNhatGioHangServlet?id="
									+ this.id.slice(1) + "&soluong=-1";
						});

				$('.xoaItem').click(
						function() {
							window.location = "XoaGioHangServlet?id="
									+ this.id.slice(1);
						});

				$('#xoagiohang').click(function() {
					window.location = "XoaGioHangServlet";
				});

			});
</script>


<%@include file="FILE\header.jsp"%>
<div id="primary">
	<%-- 	<%@include file="FILE\sidebar.jsp"%> --%>
	<div id="content" class="panel panel-primary">
		<div id="title">Nhập thông tin</div>
		<div id="contentPage">
			<div class="khung3">
				<form id="fThongTinDatHang" action="DatHangOnlineServlet" class="input-group"
					method="post">
					<%
						String hoten = "", dienthoai = "", email = "", diachi = "";
						KHACHHANG khachhang = (KHACHHANG) request.getSession()
								.getAttribute("KhachHang");
						if (khachhang != null) {
							hoten = khachhang.getTaiKhoan().getHoTen();
							dienthoai = khachhang.getTaiKhoan().getDienThoai();
							email = khachhang.getTaiKhoan().getEmail();
							diachi = khachhang.getTaiKhoan().getDiaChi();
						}
					%>
					<br> <label></label> <br>
					<table class="bang" cellpadding="10px">
						<tr>
						  <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1" name="hoten" value="<%=hoten%>">
						</tr>
						<tr>
						  <input type="text" class="form-control" placeholder="Điện thoại" aria-describedby="basic-addon1" name="dienthoai" value="<%=dienthoai%>">
						</tr>
						<tr>
						<input type="text" class="form-control" placeholder="Email" aria-describedby="basic-addon1" name="email" value="<%=email%>">
						</tr>
						<tr>
						<input type="text" class="form-control" placeholder="Địa chỉ" aria-describedby="basic-addon1" name="diachi" value="<%=diachi%>">
						</tr>
						<tr>
							<td style="width: 125px; text-align: left;"><strong>
									Branch(*) : </strong></td>
							<td><select name="idChiNhanh">
									<%
										ArrayList<CHINHANH> list = (ArrayList<CHINHANH>) request
												.getAttribute("list");
										if(list!=null){
										for (int i = 0; i < list.size(); i++) {
									%>
									<option value="<%=list.get(i).getIdChiNhanh()%>">
										<%=list.get(i).getDiaChi()%>
									</option>
									<%
										}
										}
									%>
							</select></td>
						</tr>
						<tr>
							<td style="width: 125px; text-align: left;" colspan="2">Note
								(Send your note to us for special request ...Thanks you!)</td>
						</tr>
						<tr>
							<td style="width: 125px; text-align: left;" colspan="2"><textarea
									name="thongdiep" style="width: 100%" rows="10"> </textarea>
						</tr>
						<tr>
							<td colspan="2" align="right"><input type="submit" class="btn btn-default" aria-label="Left Align"
								value="Xong"> <input type="reset" value="Reset" class="btn btn-default" aria-label="Left Align">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>
<div id="successMessage" style="display:none;">
	<div id="messagecontent">
		<p id="title">ORDER SUCCESSFUL!</p>
		<p>Thank you for your order. Please waiting for comfirm call from us!</p>
		<p>If you wait too long you can call to customer service.</p>
		<a href="#" onclick="hidebox()">OK</a>
	</div>
</div>
<script>
function hidebox(){
// 		$('#successMessage').attr("style","display:none;");
		document.getElementById("fThongTinDatHang").submit()

}
function showbox(){
	$('#successMessage').removeAttr("style");
}
</script>
<%@include file="FILE\footer.jsp"%>