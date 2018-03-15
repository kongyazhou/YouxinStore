<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/common/base.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>优信商城</title>
<link rel="stylesheet" href="${ctxsta}/youxin/css/base.css">
<link rel="stylesheet" href="${ctxsta}/youxin/css/index.css">
<link rel="stylesheet" href="${ctxsta}/common/bootstrap/css/bootstrap.min.css">
</head>
<body>

<jsp:include page="/WEB-INF/view/header.jsp"></jsp:include> 

<div class="home-hero-container container-fluid">
  <div class="home-hero">
    <div class="home-hero-slider">
      <div class="row">
        <div class="col-md-12 col-sm-12">
          <div class="box">
            <ul class="ull">
              <%-- <c:forEach items="${indexCarouselImgs}" var="indexCarouselImg">
                <li><a href="${indexCarouselImg.href}" title="${indexCarouselImg.title}" target="_blank"><img src="${ctximg }/${indexCarouselImg.picImg}" alt="${indexCarouselImg.title }"></a></li>
              </c:forEach> --%>
              <li>
              	<img src="${ctxsta }/images/geli.jpg" alt="格力">
              </li>
              <li>
              	<img src="${ctxsta }/images/geli.jpg" alt="格力">
              </li>
              <li>
              	<img src="${ctxsta }/images/geli.jpg" alt="格力">
              </li>
              <li>
              	<img src="${ctxsta }/images/geli.jpg" alt="格力">
              </li>
            </ul>
            <ol class="oll">
            </ol>
            <span class="left btnL glyphicon glyphicon-menu-right"></span> <span class="right btnL glyphicon glyphicon-menu-left"></span> </div>
        </div>
      </div>
    </div>
    <div class="home-hero-sub row">
      <div class="row">
        <div class="col-md-12 col-sm-12">
          <div class="span4">
            <ul class="home-channel-list clearfix">
              <%-- <c:forEach items="${indexAdvertLeft}" var="indexAdvertLeft">
                <li><a href="${indexAdvertLeft.href }" target="${indexAdvertLeft.target}" title="${indexAdvertLeft.name}">${indexAdvertLeft.name}</a></li>
              </c:forEach> --%>
              <li>
              	<a href="#" target="" title="地址">名称</a>
              </li>
            </ul>
          </div>
          <div class="span16" id="J_homePromo" data-stat-title="焦点图下方小图">
            <ul class="home-promo-list clearfix">
              <%-- <c:forEach items="${indexHotAdvertImgs }" var="indexHotAdvertImg" varStatus="indexHotAdvertImgStat">
              <c:if test="${indexHotAdvertImgStat.first}">
                 <li class="first"><a class="item" href="${indexHotAdvertImg.href }" title="${indexHotAdvertImg.title}"><img src="${ctximg }/${indexHotAdvertImg.picImg}" alt="${indexHotAdvertImg.title }"></a></li>
              </c:if>
              <c:if test="${!indexHotAdvertImgStat.first}">
                 <li><a class="item" href="${indexHotAdvertImg.href }" title="${indexHotAdvertImg.title}"><img src="${ctximg }/${indexHotAdvertImg.picImg}" alt="${indexHotAdvertImg.title }"></a></li>
              </c:if>              
              </c:forEach> --%>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="home-star-goods xm-carousel-container" id="J_starProduct"> 
  </div>
</div>

<div class="page-main home-main">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="container-fluid">
          <div id="J_topCategory" class="home-recm-box home-brick-box xm-plain-box"> 
          </div>
          <div id="J_hotCategory" class="home-recm-box home-brick-box xm-plain-box"> 
          </div>
          <div id="J_popularPrudoct" class="home-recm-box home-brick-box home-brick-row-1-box xm-plain-box J_itemBox J_recommendBox is-visible"> 
          </div>
          <div id="J_commentPrudoct" class="home-review-box xm-plain-box J_itemBox J_reviewBox is-visible"> 
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">

</script>
<script type="text/javascript" src="${ctxsta}/youxin/js/index.js"></script>
</body>
</html>