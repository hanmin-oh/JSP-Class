<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ĸ��</title>
<!-- bootstrap -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- bootstrap icon -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<style>
table, th, td {
  border:1px solid black;
}
</style>
</head>
<body>

<h2>�ȳ��ϼ��� Ǫ���Դϴ�~</h2>
<table style="width:50%; border-right: none;">
  <tr>
 	<th>�� ����</th>
    <td>175cm</td>
    <td>67kg</td>
    <td>�ٷ�����</td>
  </tr>
  </table>
  
  <h2>�Ĵ�</h2>
  <table style="width:50%">
  <tr>
    <th>��ħ</th>
    <td>ź��ȭ��: </td>
    <td>�ܹ���: </td>
    <td>����: </td>
    <td style="border: none;">
    	<input 
			class="btn btn-outline-primary btn-sm" 
			type="button" 
			value="�Ĵ��Է�"
			style="font-size: 13px;"
			onclick="location.href='foodInput.jsp'"/>
	</td>
  </tr>
</table>
	<h2>���İ˻�</h2>
	<table>
		<tr>
			<td>���İ˻� <input type="text"/> 
			<input 
				type="button" 
				value="�˻�"
				onclick="location.href='foodList.jsp'"/></td>
		</tr>
		<tr><td>�߰��(����)<input type="checkbox"/></td></tr>
			<tr><td>ġŲ�Ѹ���<input type="checkbox"/></td></tr>
			<tr><td>�߹��<input type="checkbox"/></td></tr>
			<tr><td>�߰���<input type="checkbox"/></td></tr>
			<tr><td>�ߵ�����<input type="checkbox"/></td></tr>
		<tr>
			<tr class="table-secondary">
			<td colspan="5" align="right">
				<input 
					class="btn btn-outline-primary btn-sm" 
					type="button" 
					value="�Ĵ��Է�"
					style="font-size: 13px;"
					onclick="location.href='homeView.jsp'"/>
			</td>
		</tr>
		</tr>
		
	</table>
	<input 
		class="btn btn-outline-primary btn-sm" 
		type="button" 
		value="���ư���"
		style="font-size: 13px;"
		onclick="location.href='homeView.jsp'"/>
</body>
</html>