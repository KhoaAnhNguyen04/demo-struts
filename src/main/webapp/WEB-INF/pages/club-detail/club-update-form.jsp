<%@ page contentType="text/html;charset=UTF-8" %> <%@ taglib prefix="s"
uri="/struts-tags" %>
<div class="lg:col-span-1">
  <div
    class="bg-white border border-gray-200 shadow-sm rounded-2xl p-6 sticky top-6"
  >
    <div class="mb-5">
      <h2 class="text-xl font-semibold text-gray-900">Update Club</h2>
      <p class="text-sm text-gray-500 mt-1">Edit club information here.</p>
    </div>

    <s:form action="club-update" cssClass="space-y-5" theme="simple">
      <s:hidden name="clubId" value="%{club.id}" />

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
      <div>
        <label class="block text-sm font-semibold text-gray-700 mb-2">
          Club Image URL
        </label>
        <s:textfield
          name="imgUrl"
          value="%{club.imgUrl}"
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
