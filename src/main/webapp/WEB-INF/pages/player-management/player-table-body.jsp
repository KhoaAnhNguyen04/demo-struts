<%@ taglib prefix="s" uri="/struts-tags" %> <%@ page contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8" %>
<s:iterator value="players" var="p">
  <s:url action="player-detail" var="detailUrl">
    <s:param name="id" value="#p.id" />
  </s:url>

  <tr class="hover:bg-gray-50 transition">
    <td class="px-4 py-2 border"><s:property value="#p.id" /></td>
    <td class="px-4 py-2 border font-medium">
      <s:property value="#p.fullName" />
    </td>
    <td class="px-4 py-2 border"><s:property value="#p.position" /></td>
    <td class="px-4 py-2 border"><s:property value="#p.birthYear" /></td>
    <td class="px-4 py-2 border"><s:property value="#p.shirtNumber" /></td>
    <td class="px-4 py-2 border text-center space-x-2">
      <a
        href="${detailUrl}"
        class="px-3 py-1 text-sm bg-blue-500 text-white rounded hover:bg-blue-600"
      >
        Detail
      </a>
    </td>
  </tr>
</s:iterator>
