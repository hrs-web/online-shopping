<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%--<%@taglib uri="http://www.itvk.cn/jsp/tags" prefix="q"%>--%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<jsp:include page="/icd_meta.jsp" />
<title>商品列表</title>
<jsp:include page="/icd_link.jsp" />
</head>
<body>
	<jsp:include page="/icd_top.jsp"></jsp:include>

	<!-- 商品列表 -->
	<div class="wrapper" style="min-height: 500px">
		<!-- 面包屑导航 -->
		<ol class="breadcrumb">
			<li><span class="breadcrumb-title">当前位置：</span> <a
				href="${ctx}/main">首页</a></li>
			<c:if test="${!empty cate}">
				<li class="active">${cate.name}</li>
			</c:if>
			<c:if test="${empty cate}">
				<li class="active">热门商品</li>
			</c:if>
		</ol>

		<!-- 列表开始 -->
		<div class="list">
			<section class="cards cards-borderless cards-products row">
				<c:forEach items="${prodPage.items}" var="prod">
					<div class="col-xs-2">
						<div class="card">
							<a href="${ctx}/product_detail?id=${prod.id}" target="_blank"><img
								src="${pic_base}${prod.thumbnail}" alt="" /></a>
							<div class="card-heading">
								<span class="pull-right price"><fmt:formatNumber
										value="${prod.sale_price}" pattern="￥#,##0.00" /> </span> <a
									href="${ctx}/product_detail?id=${prod.id}" target="_blank">${prod.name}</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</section>

			<div class="clearfix"
				style="padding: 0 12px; border-top: 1px dotted #e5e5e5;">
				<ul class="pager">
					<c:if test="${prodPage.number == 1}">
						<li class="previous disabled"><a href="#">«</a></li>
					</c:if>
					<c:if test="${prodPage.number != 1}">
						<li class="previous"><a href="${ctx}/product/list?level=${level}&id=${id}&number=${prodPage.number-1}">«</a></li>
					</c:if>
					<%--遍历页码--%>
					<c:forEach begin="1" end="${prodPage.totalPages}" var="i">
						<c:if test="${prodPage.number == i}">
							<li class="active">
						</c:if>
						<c:if test="${prodPage.number != i}">
							<li>
						</c:if>
						<a href="${ctx}/product/list?level=${level}&id=${id}&number=${i}">${i}</a>
						</li>
					</c:forEach>
					<c:if test="${prodPage.number == prodPage.totalPages}">
						<li class="previous disabled"><a href="#">»</a></li>
					</c:if>
					<c:if test="${prodPage.number != prodPage.totalPages}">
						<li class="next"><a href="${ctx}/product/list?level=${level}&id=${id}&number=${prodPage.number+1}">»</a></li>
					</c:if>
				</ul>
			</div>
		</div>
		<!-- /列表结束 -->
	</div>
	<!-- /商品列表 -->

	<jsp:include page="/icd_bottom.jsp"></jsp:include>

	<script src="${ctx}/zui/lib/jquery/jquery.js"></script>
	<script src="${ctx}/js/jquery.scrollUp.min.js"></script>
	<script src="${ctx}/zui/js/zui.js"></script>
	<script src="${ctx}/js/my.js"></script>
</body>
</html>