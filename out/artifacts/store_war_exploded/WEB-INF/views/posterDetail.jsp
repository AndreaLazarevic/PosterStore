<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<body>
<div class="container-wrapper">
    <div class="container">
        <div>
            <h1>Poster detail</h1>
        </div>

    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <img src="#" alt="image" style="width:100%; height: 300px"/>
            </div>

            <div class="col-md-5">
                <h3><strong>Name</strong>: ${poster.name}</h3>
                <p><strong>Description</strong>: ${poster.description}</p>
                <p><strong>Category</strong>: ${poster.name}</p>
                <p><strong>Price</strong>: ${poster.price} EUR</p>
            </div>
        </div>
    </div>
</div>


</body>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
