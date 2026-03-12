<%@ page contentType="text/html;charset=UTF-8" %> <%@ taglib prefix="s"
uri="/struts-tags" %>

<div class="max-w-5xl mx-auto px-6 py-10">
  <!-- HEADER -->
  <div class="mb-8">
    <div class="flex items-center justify-between gap-4 flex-wrap">
      <div>
        <p class="text-sm text-gray-500 uppercase tracking-wider">
          Club Detail
        </p>
        <h1 class="text-4xl font-bold text-gray-900 mt-1">
          <s:property value="club.clubName" />
        </h1>
      </div>

      <a
        href="club-management"
        class="inline-flex items-center rounded-lg bg-gray-900 px-4 py-2 text-sm font-medium text-white hover:bg-gray-800 transition"
      >
        ← Back to list
      </a>
    </div>
  </div>

  <!-- CLUB INFO CARD -->
  <div
    class="bg-gradient-to-r from-slate-900 via-slate-800 to-slate-900 rounded-2xl shadow-lg p-6 mb-8 text-white"
  >
    <div class="flex flex-wrap items-center justify-between gap-6">
      <div>
        <p class="text-sm text-gray-300 mb-2">Club ID</p>
        <p class="text-2xl font-semibold">#<s:property value="club.id" /></p>
      </div>

      <div
        class="bg-white/10 backdrop-blur-sm rounded-xl px-4 py-3 border border-white/10"
      >
        <p class="text-sm text-gray-300">Total Players</p>
        <p class="text-2xl font-bold">
          <s:property value="club.playerClubs.size()" />
        </p>
      </div>
    </div>
  </div>

  <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
    <!-- UPDATE FORM -->
    <jsp:include page="./club-update-form.jsp" />
    <!-- PLAYER LIST -->
    <div class="lg:col-span-2">
      <div class="bg-white border border-gray-200 shadow-sm rounded-2xl p-6">
        <div class="flex items-center justify-between mb-6">
          <div>
            <h3 class="text-2xl font-semibold text-gray-900">Players</h3>
            <p class="text-sm text-gray-500 mt-1">
              List of players associated with this club
            </p>
          </div>
        </div>

        <s:if test="club.playerClubs != null && !club.playerClubs.isEmpty()">
          <div class="space-y-4">
            <s:iterator value="club.playerClubs" var="playerClub">
              <jsp:include page="./club-player-item.jsp" />
            </s:iterator>
          </div>
        </s:if>

        <s:else>
          <div
            class="border border-dashed border-gray-300 rounded-2xl p-10 text-center bg-gray-50"
          >
            <p class="text-lg font-medium text-gray-600">No players found</p>
            <p class="text-sm text-gray-500 mt-2">
              This club does not have any player records yet.
            </p>
          </div>
        </s:else>
        <div
          class="border-2 border-dashed border-gray-300 rounded-2xl p-5 hover:border-blue-400 hover:bg-blue-50 transition cursor-pointer"
        >
          <a
            href="club-add-player-form?clubId=<s:property value='club.id'/>"
            class="flex items-center justify-center gap-3 text-blue-600 font-semibold text-lg"
          >
            <span class="text-2xl">+</span>
            Add Player To This Club
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
