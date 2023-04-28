<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
</head>
<body>
    <div class="wrapper">
        <div class="authorization_head">
            <img class="mark" src="resources/img/logo.png" />
            <div class="logo">Seattle Library</div>
        </div>
        <div class="authorization">
            <div class="authorization_form">
                <form method="post" action="login">
                    <div class="title">ログイン</div>
                    <label class="label">メールアドレス</label> <input type="text" class="input" name="email" id="email" autocomplete="off" required /> <label class="label">パスワード</label> <input type="password" class="input" id="password" name="password" required />
                    <c:if test="${!empty errorMessage}">
                        <div class="error">${errorMessage}</div>
                    </c:if>
                    <input type="submit" class="button primary" value="ログイン" />
                </form>
            </div>
            <div class="authorization_navi">
                <label class="authorization_text">まだアカウントをお持ちでないですか？</label> <a class="authorization_link marker" href="<%=request.getContextPath()%>/newAccount">アカウント作成</a>
            </div>
        </div>
        <footer>
            <div class="copyright">© 2019 Seattle Consulting Co., Ltd. All rights reserved.</div>
        </footer>
    </div>
<form method="post" action="ressetPassword" name="resset">
            <input type="text" class="input" name="email" id="email" autocomplete="off" required /> <label class="label">パスワード</label> <input type="password" class="input" id="password" name="password" required />
            <button type="submit" id="resset-btn" class="btn_ressetPassword">パスワードリセット</button>
        </form>
</body>
</html>
