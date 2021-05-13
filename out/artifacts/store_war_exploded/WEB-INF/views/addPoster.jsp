<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<body>
<div class="container-wrapper">
    <div class="container">
        <div>
            <h1>Add poster</h1>
        </div>


        <form:form action="${pageContext.request.contextPath}/admin/posterInventory/addPoster" method="post"
                   modelAttribute="poster" enctype="multipart/form-data">
            <div class="form-group">
                <form:label path="name">Name</form:label>
                <form:input path="name"/>
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline">
                    <form:radiobutton path="category" id="category" value="Quotes"/>Quotes
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="category" id="category" value="Nature"/>Nature
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="category" id="category" value="Cities"/>Cities
                </label>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="description" id="description" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:input path="price" id="price" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="size">Size</label>
                <label class="checkbox-inline">
                    <form:radiobutton path="size" id="size" value="21x30"/>21x30
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="size" id="size" value="30x40"/>30x40
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="size" id="size" value="40x50"/>40x50
                </label>
            </div>

            <div class="form-group">
                <label for="status">Status</label>
                <label class="checkbox-inline">
                    <form:radiobutton path="status" id="status" value="Available"/>Available
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="status" id="status" value="Unavailable"/>Unavailable
                </label>
            </div>

            <div class="form-group">
                <label for="unitInStock">Unit in stock</label>
                <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
            </div>

            <div class="form-group">
                <label class="form-control" for="image">Upload image</label>
                <form:input path="image" id="image" type="file" class="form:input-large"/>
            </div>

            <br><br>
            <input type="submit" value="Add" class="btn btn-secondary">
            <a href="<c:url value="/admin/posterInventory" />" class="btn btn-secondary">Cancel</a>
        </form:form>
    </div>
</div>


</body>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
