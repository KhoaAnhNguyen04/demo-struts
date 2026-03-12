<%@ page contentType="text/html;charset=UTF-8" %> <%@ taglib prefix="s"
uri="/struts-tags" %>
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
