<%@ page contentType="text/html;charset=UTF-8" %> <%@ taglib prefix="s"
uri="/struts-tags" %>

<div
  class="border border-gray-200 rounded-2xl p-5 hover:shadow-lg hover:border-blue-300 transition bg-gray-50/70"
>
  <s:url action="club-edit-player" var="playerClubUrl">
    <s:param name="playerId" value="player.id" />
    <s:param name="clubId" value="clubId" />
  </s:url>

  <a href="${playerClubUrl}" class="block">
    <div
      class="flex flex-col md:flex-row md:items-start md:justify-between gap-4"
    >
      <!-- LEFT INFO -->
      <div>
        <div class="flex items-center gap-3 flex-wrap">
          <h4 class="text-lg font-bold text-gray-900">
            <s:property value="player.fullName" />
          </h4>

          <s:if test="yearLeft == null">
            <span
              class="inline-flex items-center rounded-full bg-green-100 px-3 py-1 text-xs font-semibold text-green-700"
            >
              Current Player
            </span>
          </s:if>
          <s:else>
            <span
              class="inline-flex items-center rounded-full bg-gray-200 px-3 py-1 text-xs font-semibold text-gray-700"
            >
              Former Player
            </span>
          </s:else>
        </div>

        <div class="mt-2 flex flex-wrap gap-2 text-sm">
          <span
            class="inline-block rounded-lg bg-blue-50 text-blue-700 px-3 py-1 font-medium"
          >
            <s:property value="player.position" />
          </span>

          <s:if test="player.birthYear != null">
            <span
              class="inline-block rounded-lg bg-purple-50 text-purple-700 px-3 py-1 font-medium"
            >
              Born: <s:property value="player.birthYear" />
            </span>
          </s:if>
        </div>
      </div>

      <!-- CLUB PERIOD -->
      <div class="min-w-[180px]">
        <div
          class="rounded-xl bg-white border border-gray-200 px-4 py-3 text-sm text-gray-600"
        >
          <p class="mb-1">
            <span class="font-semibold text-gray-800">Joined:</span>
            <s:property value="yearJoined" />
          </p>

          <p>
            <span class="font-semibold text-gray-800">Left:</span>

            <s:if test="yearLeft != null">
              <s:property value="yearLeft" />
            </s:if>
            <s:else> Present </s:else>
          </p>
        </div>
      </div>
    </div>

    <!-- PLAYER STATS -->
    <div class="grid grid-cols-4 gap-3 mt-4">
      <div class="bg-white border border-gray-200 rounded-xl p-3 text-center">
        <p class="text-xs text-gray-500">Apps</p>
        <p class="text-lg font-bold text-gray-900">
          <s:property value="appearances" />
        </p>
      </div>

      <div class="bg-white border border-gray-200 rounded-xl p-3 text-center">
        <p class="text-xs text-gray-500">Goals</p>
        <p class="text-lg font-bold text-green-600">
          <s:property value="goals" />
        </p>
      </div>

      <div class="bg-white border border-gray-200 rounded-xl p-3 text-center">
        <p class="text-xs text-gray-500">Assists</p>
        <p class="text-lg font-bold text-blue-600">
          <s:property value="assists" />
        </p>
      </div>

      <div class="bg-white border border-gray-200 rounded-xl p-3 text-center">
        <p class="text-xs text-gray-500">Clean Sheets</p>
        <p class="text-lg font-bold text-purple-600">
          <s:property value="cleanSheets" />
        </p>
      </div>
    </div>
  </a>
</div>
