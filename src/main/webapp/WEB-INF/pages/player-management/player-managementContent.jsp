<%@ taglib prefix="s" uri="/struts-tags" %> <%@ page contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8" %>

<div class="max-w-5xl mx-auto mt-8">
  <h2 class="text-2xl font-bold mb-4">Player List</h2>

  <div class="overflow-x-auto bg-white shadow-md rounded-lg">
    <table class="min-w-full text-sm text-left border border-gray-200">
      <thead class="bg-gray-100 text-gray-700 uppercase text-xs">
        <tr>
          <th class="px-4 py-3 border">ID</th>
          <th class="px-4 py-3 border">Name</th>
          <th class="px-4 py-3 border">Position</th>
          <th class="px-4 py-3 border">Birth Year</th>
          <th class="px-4 py-3 border">Shirt</th>
          <th class="px-4 py-3 border text-center">Action</th>
        </tr>
      </thead>

      <tbody class="text-gray-700">
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
            <td class="px-4 py-2 border">
              <s:property value="#p.birthYear" />
            </td>
            <td class="px-4 py-2 border">
              <s:property value="#p.shirtNumber" />
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
                onclick="return confirm('Delete player?');"
                class="px-3 py-1 text-sm bg-red-500 text-white rounded hover:bg-red-600"
              >
                Delete
              </a>
            </td>
          </tr>
        </s:iterator>
      </tbody>
    </table>
  </div>

  <hr class="my-8" />

  <h2 class="text-2xl font-bold mb-4">Create Player</h2>

  <div class="bg-white p-6 rounded-lg shadow-md max-w-md">
    <jsp:include page="./add-player-form.jsp" />
  </div>
</div>
