<%@ taglib prefix="s" uri="/struts-tags" %> <%@ page contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8" %>
<s:form action="country-create" cssClass="space-y-4" theme="simple">
  <div>
    <label class="block text-sm font-medium text-gray-700 mb-1">
      Country Name
    </label>

    <s:textfield
      name="countryName"
      cssClass="text-gray-700 w-full border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400"
    />
  </div>
  <div>
    <label class="block text-sm font-medium text-gray-700 mb-1">
      Country Image URL
    </label>

    <s:textfield
      name="imgUrl"
      cssClass="text-gray-700 w-full border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400"
    />
  </div>

  <div>
    <s:submit
      value="Create Club"
      cssClass="w-full bg-green-500 text-white py-2 rounded hover:bg-green-600 transition"
    />
  </div>
</s:form>
