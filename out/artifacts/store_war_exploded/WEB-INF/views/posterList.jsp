<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<body>
<div class="container-wrapper">
    <div class="container">
        <div>
            <h1>All posters</h1>
            <p class="lead">Check out all the posters available now! </p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>Photo Thumb</th>
                <th>Name</th>
                <th>Category</th>
                <th>Price</th>
                <th>Status</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${posters}" var="poster">
                <tr>
                    <td><img src="#" alt="image"/></td>
                    <td>${poster.name}</td>
                    <td>${poster.category}</td>
                    <td>${poster.price} EUR</td>
                    <td>${poster.status}</td>

                    <td><a href="<spring:url value="/posterList/posterDetail/${poster.posterId}"/>">
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-info-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412l-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM8 5.5a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                        </svg>
                    </a> </td>
                </tr>
            </c:forEach>

        </table>

    </div>
</div>

<!-- /.container -->

<%@include file="template/footer.jsp"%>

</body>

