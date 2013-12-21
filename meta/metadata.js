// ==UserScript==
// @name          <%= meta.name %>
// @version       <%= version %>
// @description   <%= description %>
// @namespace     <%= meta.namespace %>
// @run-at        document-start
<%=
  meta.matches.map(function(match) {
    return '// @match         ' + match;
  }).join('\n')
%>
// @grant         GM_getValue
// @grant         GM_setValue
// @grant         GM_deleteValue
// @grant         GM_openInTab
// @updateURL 	  <%= meta.repo %>raw/stable/builds/<%= meta.files.metajs %>
// @downloadURL   <%= meta.repo %>raw/stable/builds/<%= meta.files.userjs %>
// ==/UserScript==