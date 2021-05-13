
<%@include file="/WEB-INF/views/template/header.jsp"%>

<body>
<div class="container-wrapper">
    <div class="container">
        <div>
            <h1>Admin section</h1>
            <p class="lead"></p>
        </div>

        <h3>
            <a href="<c:url value="/admin/posterInventory"/>">Poster inventory</a>
        </h3>
        <p>Here you can check and modify the inventory. </p>

    </div>
</div>

<!-- /.container -->

<%@include file="template/footer.jsp"%>

</body>

