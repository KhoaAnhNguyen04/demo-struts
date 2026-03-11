<%@ page contentType="text/html;charset=UTF-8" %> <%@ taglib prefix="s"
uri="/struts-tags" %>

<div class="max-w-3xl mx-auto mt-10">
  <!-- TITLE -->
  <h2 class="text-3xl font-bold mb-6">Player Detail</h2>

  <!-- PLAYER ID -->
  <div class="bg-gray-100 p-4 rounded mb-6">
    <p class="text-gray-700">
      <span class="font-semibold">ID:</span>
      <s:property value="player.id" />
    </p>
  </div>

  <!-- UPDATE FORM -->
  <div class="bg-white shadow-md rounded-lg p-6 mb-8">
    <h2 class="text-xl font-semibold mb-4">Update Player</h2>

    <s:form action="player-update" cssClass="space-y-4" theme="simple">
      <s:hidden name="id" value="%{player.id}" />

      <!-- Full Name -->
      <div class="grid grid-cols-3 items-center gap-4">
        <label class="text-sm font-medium text-gray-700"> Full Name </label>

        <div class="col-span-2">
          <s:textfield
            name="fullName"
            value="%{player.fullName}"
            cssClass="text-gray-700 w-full border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
          />
        </div>
      </div>

      <!-- Position -->
      <div class="grid grid-cols-3 items-center gap-4">
        <label class="text-sm font-medium text-gray-700"> Position </label>

        <div class="col-span-2">
          <s:textfield
            name="position"
            value="%{player.position}"
            cssClass="text-gray-700 w-full border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
          />
        </div>
      </div>

      <!-- Birth Year -->
      <div class="grid grid-cols-3 items-center gap-4">
        <label class="text-sm font-medium text-gray-700"> Birth Year </label>

        <div class="col-span-2">
          <s:textfield
            name="birthYear"
            value="%{player.birthYear}"
            cssClass="text-gray-700 w-full border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
          />
        </div>
      </div>

      <!-- Shirt Number -->
      <div class="grid grid-cols-3 items-center gap-4">
        <label class="text-sm font-medium text-gray-700"> Shirt Number </label>

        <div class="col-span-2">
          <s:textfield
            name="shirtNumber"
            value="%{player.shirtNumber}"
            cssClass="text-gray-700 w-full border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
          />
        </div>
      </div>

      <div class="pt-2">
        <s:submit
          value="Update Player"
          cssClass="bg-blue-500 text-white px-5 py-2 rounded hover:bg-blue-600 transition"
        />
      </div>
    </s:form>
  </div>

  <!-- CLUB LIST -->
  <div class="bg-white shadow-md rounded-xl p-6 mb-8">
    <h3 class="text-xl font-semibold mb-6 text-gray-800 border-b pb-2">
      Club History
    </h3>

    <div class="space-y-3">
      <s:iterator value="player.clubs">
        <div
          class="flex justify-between items-center p-3 rounded-lg border border-gray-200 hover:bg-gray-50 transition"
        >
          <!-- Club Name -->
          <div class="font-medium text-gray-800">
            <s:property value="clubName" />
          </div>

          <!-- Years -->
          <div class="text-sm text-gray-500">
            <s:if test="startYear != null">
              <span class="bg-gray-100 px-2 py-1 rounded">
                <s:property value="startYear" /> -
                <s:property value="endYear != null ? endYear : 'Present'" />
              </span>
            </s:if>
          </div>
        </div>
      </s:iterator>
    </div>
  </div>

  <!-- BACK BUTTON -->
  <a
    href="player-management"
    class="inline-block bg-gray-700 text-white px-4 py-2 rounded hover:bg-gray-800 transition"
  >
    Back to list
  </a>
</div>
