<%@ taglib prefix="s" uri="/struts-tags" %>

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
        <s:submit
          value="Create Player"
          cssClass="w-full bg-green-500 text-white py-2 rounded hover:bg-green-600 transition"
        />
      </div>
    </s:form>
  </div>
</div>
