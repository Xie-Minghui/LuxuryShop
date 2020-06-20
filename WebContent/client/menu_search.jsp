<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	

<div id="divmenu">
		<a href="${pageContext.request.contextPath}/showProductByPage?category=皮包">皮包</a> 
</div>

<div id="divsearch">
<form action="${pageContext.request.contextPath}/MenuSearchController" id="searchform">
	<table width="100%" border="0" cellspacing="0">
		<tr>
			<td style="text-align:right; padding-right:220px">
				Search 
				<input type="text" name="textfield" class="inputtable" id="textfield" value="What Are You Looking For"
                   onmouseover="this.focus();"
                   onclick="my_click(this,'textfield');"
                   onblur="my_blur(this,'textfield')"/> 
			</td>
		</tr>
	</table>
</form>


<script type="text/javascript">
  //鼠标的点击事件
  function my_click(obj,myid){
	  
	  //点击时，如果取得的值和搜索框默认的value值相同，则将搜索框清空
	  if(document.getElementById(myid).value == document.getElementById(myid).defaultValue){
		  document.getElementById(myid).value = '';
		  obj.style.color='#000';
	  }
  }
  
  //鼠标不聚焦在搜索框时的执行
  function my_blur(obj,myid){
	  if(document.getElementById(myid).value == ''){
		  document.getElementById(myid).value = document.getElementById(myid).defaultValue;
		  obj.style.color='#999';
	  }
  }

</script>


</div>