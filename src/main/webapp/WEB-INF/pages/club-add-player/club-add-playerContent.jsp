<%@ page contentType="text/html;charset=UTF-8" %> <%@ taglib prefix="s"
uri="/struts-tags" %>

<div class="max-w-2xl mx-auto px-6 py-10">
  <div class="bg-white border border-gray-200 shadow-sm rounded-2xl p-6">
    <h2 class="text-2xl font-bold text-gray-900 mb-6">
      Add Existing Player To Club
    </h2>

    <s:form action="club-add-player" theme="simple" cssClass="space-y-5">
      <s:hidden name="clubId" value="%{club.id}" />

      <div>
        <label class="block text-sm font-semibold text-gray-700 mb-2">
          Select Existing Player
        </label>

        <s:select
          name="playerId"
          list="players"
          listKey="id"
          listValue="fullName"
          headerKey=""
          headerValue="-- Choose a player --"
          cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
        />
      </div>

      <div>
        <label class="block text-sm font-semibold text-gray-700 mb-2">
          Year Joined
        </label>
        <s:textfield
          name="yearJoined"
          cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
        />
      </div>

      <div>
        <label class="block text-sm font-semibold text-gray-700 mb-2">
          Year Left
        </label>
        <s:textfield
          name="yearLeft"
          cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
        />
      </div>

      <div>
        <label class="block text-sm font-semibold text-gray-700 mb-2">
          Appearances
        </label>
        <s:textfield
          name="appearances"
          cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
        />
      </div>
      <div>
        <label class="block text-sm font-semibold text-gray-700 mb-2">
          Goals
        </label>
        <s:textfield
          name="goals"
          cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
        />
      </div>

      <div>
        <label class="block text-sm font-semibold text-gray-700 mb-2">
          Assists
        </label>
        <s:textfield
          name="assists"
          cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
        />
      </div>

      <div>
        <label class="block text-sm font-semibold text-gray-700 mb-2">
          Clean Sheets
        </label>
        <s:textfield
          name="cleanSheets"
          cssClass="w-full rounded-xl border border-gray-300 bg-white px-4 py-3 text-gray-800 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition"
        />
      </div>

      <div class="flex gap-3 pt-2">
        <s:submit
          value="Add Player"
          cssClass="rounded-xl bg-blue-600 px-5 py-3 text-white font-semibold hover:bg-blue-700 transition cursor-pointer"
        />

        <a
          href="club-detail?cludId=<s:property value='clubId'/>"
          class="rounded-xl bg-gray-200 px-5 py-3 text-gray-800 font-semibold hover:bg-gray-300 transition"
        >
          Cancel
        </a>
      </div>
    </s:form>
  </div>
</div>
