<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<a href="${contextPath}">
	<img id="logo" src="img/site/logo.gif" class="logo">
</a>
<c:set var="cssearch" value="${sessionScope.cs_search}"/>

<form action="foresearch" method="post">
	<div class="searchDiv">
		<input type="text" name="keyword" placeholder="时尚男鞋  太阳镜">
		<button type="submit" class="searchButton">搜索</button>
		<div class="searchBelow">
			<c:forEach items="${cssearch}" var="c" varStatus="st">
				<c:if test="${st.count>=5 and st.count<=8}">
					<span>
						<a href="forecategory?cid=${c.id}">${c.name}</a>
						<c:if test="${st.count!=8}">
							<span>|</span>
						</c:if>
					</span>
				</c:if>
			
			</c:forEach>
		</div>
	</div>
</form>
