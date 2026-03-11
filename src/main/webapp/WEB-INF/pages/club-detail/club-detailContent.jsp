<%@ page contentType="text/html;charset=UTF-8" %> <%@ taglib prefix="s"
uri="/struts-tags" %>

<div class="max-w-3xl mx-auto mt-10">
  <!-- TITLE -->
  <h2 class="text-3xl font-bold mb-6">Club Detail</h2>

  <!-- CLUB ID -->
  <div class="bg-gray-100 p-4 rounded mb-6">
    <p class="text-gray-700">
      <span class="font-semibold">ID:</span>
      <s:property value="club.id" />
    </p>
  </div>

  <!-- UPDATE FORM -->
  <div class="bg-white shadow-md rounded-lg p-6 mb-8">
    <h2 class="text-xl font-semibold mb-4">Update Club</h2>

    <s:form action="club-update" cssClass="space-y-4" theme="simple">
      <s:hidden name="id" value="%{club.id}" />

      <!-- Club Name -->
      <div class="grid grid-cols-3 items-center gap-4">
        <label class="text-sm font-medium text-gray-700"> Club Name </label>

        <div class="col-span-2">
          <s:textfield
            name="clubName"
            value="%{club.clubName}"
            cssClass="text-gray-700 w-full border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
          />
        </div>
      </div>

      <div class="pt-2">
        <s:submit
          value="Update Club"
          cssClass="bg-blue-500 text-white px-5 py-2 rounded hover:bg-blue-600 transition"
        />
      </div>
    </s:form>
  </div>

  <!-- PLAYER LIST -->
  <div class="bg-white shadow-md rounded-lg p-6 mb-8">
    <h3 class="text-xl font-semibold mb-4">Players</h3>

    <s:if test="club.players != null && !club.players.isEmpty()">
      <ul class="space-y-2 list-disc pl-5 text-gray-700">
        <s:iterator value="club.players">
          <li class="text-gray-700 hover:text-blue-600 transition">
            <span class="font-medium">
              <s:property value="fullName" />
            </span>
            -
            <span>
              <s:property value="position" />
            </span>
            <s:if test="birthYear != null">
              (<s:property value="birthYear" />)
            </s:if>
          </li>
        </s:iterator>
      </ul>
    </s:if>

    <s:else>
      <p class="text-gray-500 italic">No players found in this club.</p>
    </s:else>
  </div>

  <!-- BACK BUTTON -->
  <a
    href="club-management"
    class="inline-block bg-gray-700 text-white px-4 py-2 rounded hover:bg-gray-800 transition"
  >
    Back to list
  </a>
</div>
