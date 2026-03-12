<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="max-w-5xl mx-auto mt-8">
  <h2 class="text-2xl font-bold mb-4">Country List</h2>

  <s:set
    var="headFragment"
    scope="request"
    value="'/WEB-INF/pages/country-management/country-table-head.jsp'"
  />
  <s:set
    var="bodyFragment"
    scope="request"
    value="'/WEB-INF/pages/country-management/country-table-body.jsp'"
  />

  <jsp:include page="/WEB-INF/components/table-wrapper.jsp" />

  <hr class="my-8" />

  <h2 class="text-2xl font-bold mb-4">Create Country</h2>

  <div class="bg-white p-6 rounded-lg shadow-md max-w-md">
    <jsp:include page="./create-country-form.jsp" />
  </div>
</div>
