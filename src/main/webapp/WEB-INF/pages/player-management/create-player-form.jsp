<%@ taglib prefix="s" uri="/struts-tags" %> <%@ page contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8" %>

<s:form action="player-create" cssClass="space-y-4" theme="simple">
  <div>
    <label class="block text-sm font-medium text-gray-700 mb-1">
      Full Name
    </label>
    <s:textfield
      name="fullName"
      cssClass="text-gray-700 w-full border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400"
    />
  </div>

  <div>
    <label class="block text-sm font-medium text-gray-700 mb-1">
      Position
    </label>
    <s:textfield
      name="position"
      cssClass="text-gray-700 w-full border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400"
    />
  </div>

  <div>
    <label class="block text-sm font-medium text-gray-700 mb-1">
      Birth Year
    </label>
    <s:textfield
      name="birthYear"
      cssClass="text-gray-700 w-full border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400"
    />
  </div>

  <div>
    <label class="block text-sm font-medium text-gray-700 mb-1">
      Shirt Number
    </label>
    <s:textfield
      name="shirtNumber"
      cssClass="text-gray-700 w-full border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-400"
    />
  </div>

  <div>
    <label class="block text-sm font-medium text-gray-700 mb-1">
      Country
    </label>
    <s:select
      name="countryId"
      list="countries"
      listKey="id"
      listValue="countryName"
      headerKey=""
      headerValue="-- Choose a country --"
      cssClass="text-gray-700 w-full border rounded px-3 py-2 bg-white focus:outline-none focus:ring-2 focus:ring-blue-400"
    />
  </div>

  <div>
    <s:submit
      value="Create Player"
      cssClass="w-full bg-green-500 text-white py-2 rounded hover:bg-green-600 transition"
    />
  </div>
</s:form>
