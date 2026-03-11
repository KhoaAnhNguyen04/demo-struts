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
    <div class="lg:col-span-1">
      <div
        class="bg-white border border-gray-200 shadow-sm rounded-2xl p-6 sticky top-6"
      >
        <div class="mb-5">
          <h2 class="text-xl font-semibold text-gray-900">Update Club</h2>
          <p class="text-sm text-gray-500 mt-1">Edit club information here.</p>
        </div>

        <s:form action="club-update" cssClass="space-y-5" theme="simple">
          <s:hidden name="id" value="%{club.id}" />

          <div>
            <label class="block text-sm font-semibold text-gray-700 mb-2">
              Club Name
            </label>
            <s:textfield
              name="clubName"
              value="%{club.clubName}"
              cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
            />
          </div>

          <div class="pt-2">
            <s:submit
              value="Save Changes"
              cssClass="w-full rounded-xl bg-blue-600 px-4 py-3 text-white font-semibold hover:bg-blue-700 shadow-md transition cursor-pointer"
            />
          </div>
        </s:form>
      </div>
    </div>

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
            <s:iterator value="club.playerClubs">
              <div
                class="border border-gray-200 rounded-2xl p-5 hover:shadow-md hover:border-blue-300 transition bg-gray-50/70"
              >
                <div
                  class="flex flex-col md:flex-row md:items-start md:justify-between gap-4"
                >
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
              </div>
            </s:iterator>
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
      </div>
    </div>
  </div>
</div>
