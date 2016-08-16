<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <script language="javascript">

function closeWin(thetime) {
	setTimeout("window.close()", thetime); //1000 은 1초를 의미합니다.
	opener.location.reload();
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body onload="closeWin('10')">

</body>
</html>