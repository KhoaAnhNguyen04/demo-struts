<%@ taglib prefix="s" uri="/struts-tags" %> <%@ page contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8" %>

<div class="max-w-5xl mx-auto mt-8">
  <h2 class="text-2xl font-bold mb-4">Player List</h2>

  <s:set
    var="headFragment"
    scope="request"
    value="'/WEB-INF/pages/player-management/player-table-head.jsp'"
  />
  <s:set
    var="bodyFragment"
    scope="request"
    value="'/WEB-INF/pages/player-management/player-table-body.jsp'"
  />

  <jsp:include page="/WEB-INF/components/table-wrapper.jsp" />

  <hr class="my-8" />

  <h2 class="text-2xl font-bold mb-4">Create Player</h2>

  <div class="bg-white p-6 rounded-lg shadow-md max-w-md">
    <jsp:include page="./create-player-form.jsp" />
  </div>
</div>
