<%@ taglib prefix="s" uri="/struts-tags" %> <%@ page contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8" %>
<s:iterator value="countries" var="co">
  <s:url action="country-detail" var="detailUrl">
    <s:param name="countryId" value="#co.id" />
  </s:url>

  <s:url action="country-delete" var="deleteUrl">
    <s:param name="countryId" value="#co.id" />
  </s:url>

  <tr class="hover:bg-gray-50 transition">
    <td class="px-4 py-2 border">
      <s:property value="#co.id" />
    </td>

    <td class="px-4 py-2 border font-medium">
      <s:property value="#co.countryName" />
    </td>

    <td class="px-4 py-2 border font-medium">
      <img src="<s:property value="#co.imgUrl" />" alt="<s:property value="#co.countryName" />" class="w-16 h-16 object-cover rounded-full" />
    </td>

    <td class="px-4 py-2 border text-center space-x-2">
      <a
        href="${detailUrl}"
        class="px-3 py-1 text-sm bg-blue-500 text-white rounded hover:bg-blue-600"
      >
        Detail
      </a>

      <a
        href="${deleteUrl}"
        onclick="return confirm('Delete club?');"
        class="px-3 py-1 text-sm bg-red-500 text-white rounded hover:bg-red-600"
      >
        Delete
      </a>
    </td>
  </tr>
</s:iterator>
