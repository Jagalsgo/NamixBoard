<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- header -->
    <nav class="navbar navbar-expand-md navbar-light" style="background-color: #F5F5F5;">
        <div class="container-fluid">
            <a href="/board/list" class="navbar-brand">
                <i class="bi bi-tree ms-2 fs-3"></i>
                <span class="fw-bold fs-3 mx-1">MyWeb</span>
            </a>
            <!-- toggle button for mobile nav -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav"
            aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- navbar links -->
            <div class="collapse navbar-collapse justify-content-end align-center" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="/board/list" class="nav-link">
                            <span class="fs-4 mx-1">List</span>    
                        </a>
                    </li>
                    <c:choose>
                    <c:when test="${empty user }">
                    <li class="nav-item">
                        <a href="/user/login" class="nav-link">
                            <span class="fs-4 mx-1">로그인</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/user/reg" class="nav-link">
                            <span class="fs-4 mx-1">회원가입</span>
                        </a>
                    </li>
                    </c:when>
                    <c:otherwise>
                    <li class="nav-item">
                        <a href="/user/logout" class="nav-link">
                            <span class="fs-4 mx-1">로그아웃</span>
                        </a>
                    </li>
                    </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
    </nav>