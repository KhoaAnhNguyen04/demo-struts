<%@ page contentType="text/html;charset=UTF-8" %> <%@ taglib prefix="s"
uri="/struts-tags" %>

<div class="max-w-4xl mx-auto mt-10 px-4">
  <!-- PAGE TITLE -->
  <div class="mb-8">
    <h2 class="text-3xl font-bold text-gray-900">Player Club Detail</h2>
    <p class="text-sm text-gray-500 mt-1">
      View and update a player's club history record
    </p>
  </div>

  <!-- INFO CARD -->
  <div
    class="bg-white border border-gray-200 shadow-sm rounded-2xl overflow-hidden mb-8"
  >
    <div class="px-6 py-4 border-b border-gray-100 bg-gray-50">
      <h3 class="text-lg font-semibold text-gray-900">Record Information</h3>
    </div>

    <div class="px-6 py-5 grid grid-cols-1 md:grid-cols-2 gap-5">
      <div>
        <p
          class="text-xs font-semibold uppercase tracking-wide text-gray-500 mb-1"
        >
          Player Club ID
        </p>
        <p class="text-base font-medium text-gray-900">
          <s:property value="playerClub.id" />
        </p>
      </div>

      <div>
        <p
          class="text-xs font-semibold uppercase tracking-wide text-gray-500 mb-1"
        >
          Status
        </p>
        <s:if test="playerClub.yearLeft == null">
          <span
            class="inline-flex items-center rounded-full bg-green-100 px-3 py-1 text-xs font-semibold text-green-700"
          >
            Current Club
          </span>
        </s:if>
        <s:else>
          <span
            class="inline-flex items-center rounded-full bg-gray-100 px-3 py-1 text-xs font-semibold text-gray-700"
          >
            Past Club
          </span>
        </s:else>
      </div>
    </div>
  </div>

  <!-- UPDATE FORM -->
  <div
    class="bg-white border border-gray-200 shadow-sm rounded-2xl overflow-hidden"
  >
    <div class="px-6 py-4 border-b border-gray-100 bg-gray-50">
      <h3 class="text-lg font-semibold text-gray-900">Update Player Club</h3>
    </div>

    <s:form
      action="player-club-update"
      cssClass="px-6 py-6 space-y-6"
      theme="simple"
    >
      <!-- hidden ids -->
      <s:hidden name="playerClubId" value="%{playerClub.id}" />
      <s:hidden name="playerId" value="%{playerClub.player.id}" />
      <s:hidden name="clubId" value="%{playerClub.club.id}" />

      <!-- READONLY INFO -->
      <div>
        <h4 class="text-sm font-semibold text-gray-800 mb-4">
          Basic Information
        </h4>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
          <!-- Player Name -->
          <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">
              Player Name
            </label>
            <input
              type="text"
              value="<s:property value='playerClub.player.fullName' />"
              readonly
              class="w-full rounded-xl border border-gray-200 bg-gray-100 px-4 py-3 text-gray-700 cursor-not-allowed"
            />
          </div>

          <!-- Club Name -->
          <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">
              Club Name
            </label>
            <input
              type="text"
              value="<s:property value='playerClub.club.clubName' />"
              readonly
              class="w-full rounded-xl border border-gray-200 bg-gray-100 px-4 py-3 text-gray-700 cursor-not-allowed"
            />
          </div>
        </div>
      </div>

      <!-- TIMELINE -->
      <div>
        <h4 class="text-sm font-semibold text-gray-800 mb-4">Timeline</h4>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
          <!-- Year Joined -->
          <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">
              Year Joined
            </label>
            <s:textfield
              name="yearJoined"
              value="%{playerClub.yearJoined}"
              cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
            />
          </div>

          <!-- Year Left -->
          <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">
              Year Left
            </label>
            <s:textfield
              name="yearLeft"
              value="%{playerClub.yearLeft}"
              cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
            />
            <p class="text-xs text-gray-500 mt-2">
              Leave blank if this is the current club.
            </p>
          </div>
        </div>
      </div>

      <!-- PERFORMANCE -->
      <div>
        <h4 class="text-sm font-semibold text-gray-800 mb-4">
          Performance Statistics
        </h4>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
          <!-- Appearances -->
          <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">
              Appearances
            </label>
            <s:textfield
              name="appearances"
              value="%{playerClub.appearances}"
              cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
            />
          </div>

          <!-- Goals -->
          <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">
              Goals
            </label>
            <s:textfield
              name="goals"
              value="%{playerClub.goals}"
              cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
            />
          </div>

          <!-- Assists -->
          <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">
              Assists
            </label>
            <s:textfield
              name="assists"
              value="%{playerClub.assists}"
              cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
            />
          </div>

          <!-- Clean Sheets -->
          <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">
              Clean Sheets
            </label>
            <s:textfield
              name="cleanSheets"
              value="%{playerClub.cleanSheets}"
              cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
            />
          </div>
        </div>
      </div>

      <!-- ACTIONS -->
      <div class="pt-2 flex flex-wrap gap-3">
        <s:submit
          value="Update Player Club"
          cssClass="inline-flex items-center rounded-xl bg-blue-600 px-5 py-3 text-sm font-semibold text-white hover:bg-blue-700 transition"
        />
        <a
          href="player-management"
          class="inline-flex items-center rounded-xl bg-gray-100 px-5 py-3 text-sm font-semibold text-gray-700 hover:bg-gray-200 transition"
        >
          Cancel
        </a>
      </div>
    </s:form>
  </div>

  <!-- BACK BUTTON -->
  <div class="mt-6">
    <a
      href="player-management"
      class="inline-flex items-center rounded-xl bg-gray-800 px-4 py-2.5 text-sm font-medium text-white hover:bg-gray-900 transition"
    >
      Back to list
    </a>
  </div>
</div>
