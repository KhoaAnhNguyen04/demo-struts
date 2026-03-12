<%@ page contentType="text/html;charset=UTF-8" %> <%@ taglib prefix="s"
uri="/struts-tags" %>

<div class="bg-white border border-gray-200 rounded-2xl shadow-sm p-6 mb-8">
  <div
    class="flex items-center justify-between border-b border-gray-100 pb-3 mb-6"
  >
    <h3 class="text-xl font-semibold text-gray-900">Club History</h3>
    <span class="text-sm text-gray-500">
      <s:property value="player.playerClubs.size()" /> clubs
    </span>
  </div>

  <div class="space-y-3">
    <s:iterator value="player.playerClubs" var="playerClub">
      <s:url action="club-detail" var="clubDetailUrl">
        <s:param name="clubId" value="%{#playerClub.club.id}" />
      </s:url>

      <a
        href="<s:property value='#clubDetailUrl' />"
        class="block rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-400"
      >
        <div
          class="flex items-center justify-between gap-4 rounded-xl border border-gray-200 bg-gray-50 px-4 py-3 hover:bg-white hover:shadow-sm transition-all duration-200 cursor-pointer"
        >
          <div class="flex items-center gap-4 min-w-0 flex-1">
            <div class="h-2.5 w-2.5 rounded-full bg-gray-400 shrink-0"></div>

            <div
              class="w-10 h-10 rounded-lg bg-white border border-gray-200 flex items-center justify-center overflow-hidden shrink-0"
            >
              <img
                src="<s:property value='#playerClub.club.imgUrl'/>"
                alt="<s:property value='#playerClub.club.clubName'/>"
                class="w-7 h-7 object-contain"
              />
            </div>

            <div class="min-w-0">
              <p class="text-base font-semibold text-gray-900 truncate">
                <s:property value="#playerClub.club.clubName" />
              </p>
              <p class="text-sm text-gray-500">Club career record</p>
            </div>
          </div>

          <div class="shrink-0">
            <s:if test="#playerClub.yearJoined != null">
              <span
                class="inline-flex items-center rounded-full bg-gray-200 px-3 py-1.5 text-sm font-medium text-gray-700"
              >
                <s:property value="#playerClub.yearJoined" />
                <span class="mx-1">-</span>
                <s:property
                  value="#playerClub.yearLeft != null ? #playerClub.yearLeft : 'Present'"
                />
              </span>
            </s:if>
          </div>
        </div>
      </a>
    </s:iterator>
  </div>
</div>
