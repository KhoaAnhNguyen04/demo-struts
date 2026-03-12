<%@ page contentType="text/html;charset=UTF-8" %> <%@ taglib prefix="s"
uri="/struts-tags" %>

<!-- CLUB LIST -->
<div class="bg-white border border-gray-200 shadow-sm rounded-2xl p-6 mb-8">
  <h3
    class="text-xl font-semibold text-gray-900 mb-6 border-b border-gray-100 pb-3"
  >
    Club History
  </h3>

  <div class="space-y-4">
    <s:iterator value="player.playerClubs" var="playerClub">
      <div
        class="relative flex items-start justify-between gap-4 rounded-xl border border-gray-200 bg-white px-4 py-4 hover:shadow-sm transition-all duration-200"
      >
        <div class="flex items-start gap-3 min-w-0">
          <div class="mt-1 h-3 w-3 rounded-full bg-gray-400"></div>
          <div class="min-w-0">
            <p class="text-base font-semibold text-gray-900">
              <s:property value="#playerClub.club.clubName" />
            </p>
            <p class="text-sm text-gray-500">Club career record</p>
          </div>
        </div>

        <div class="text-sm text-gray-600 whitespace-nowrap">
          <s:if test="#playerClub.yearJoined != null">
            <span class="rounded-lg bg-gray-100 px-3 py-1.5 font-medium">
              <s:property value="#playerClub.yearJoined" /> -
              <s:property
                value="#playerClub.yearLeft != null ? #playerClub.yearLeft : 'Present'"
              />
            </span>
          </s:if>
        </div>
      </div>
    </s:iterator>
  </div>
</div>
