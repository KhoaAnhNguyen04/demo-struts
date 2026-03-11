<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="max-w-5xl mx-auto mt-8">
  <h2 class="text-2xl font-bold mb-4">Club List</h2>

  <div class="overflow-x-auto bg-white shadow-md rounded-lg">
    <table class="min-w-full text-sm text-left border border-gray-200">
      <thead class="bg-gray-100 text-gray-700 uppercase text-xs">
        <tr>
          <th class="px-4 py-3 border">ID</th>
          <th class="px-4 py-3 border">Club Name</th>
          <th class="px-4 py-3 border text-center">Action</th>
        </tr>
      </thead>

      <tbody class="text-gray-700">
        <s:iterator value="clubs" var="c">
          <s:url action="club-detail" var="detailUrl">
            <s:param name="id" value="#c.id" />
          </s:url>

          <s:url action="club-delete" var="deleteUrl">
            <s:param name="id" value="#c.id" />
          </s:url>

          <tr class="hover:bg-gray-50 transition">
            <td class="px-4 py-2 border">
              <s:property value="#c.id" />
            </td>

            <td class="px-4 py-2 border font-medium">
              <s:property value="#c.clubName" />
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
      </tbody>
    </table>
  </div>

  <hr class="my-8" />

  <h2 class="text-2xl font-bold mb-4">Create Club</h2>

  <div class="bg-white p-6 rounded-lg shadow-md max-w-md">
    <s:form action="club-create" cssClass="space-y-4" theme="simple">
      <div>
        <label class="block text-sm font-medium text-gray-700 mb-1">
          Club Name
        </label>

        <s:textfield
          name="clubName"
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
  </div>
</div>
