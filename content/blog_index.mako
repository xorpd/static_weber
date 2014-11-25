<%inherit file="/web_page.makoa"/>
<%namespace name="bindex" module="content.bindex"/>

<%block name="web_page_header">
<title>Blog</title>
</%block>

<%block name="web_page_body">
<h1>Blog</h1>
    <%
        b_entries = bindex.get_blog_entries()
    %>

    <ul>
% for b_entry in b_entries:
<%
    mdata = b_entry["props"]["post_metadata"]
%>
    ## Show only posts that are not drafts:
    % if dict.get(mdata,"draft","False") == "False":

	<li>
        <a href="${b_entry["link_addr"]}">
        ${mdata["title"]}</a>
	</li>
    % endif
        
% endfor
    </ul>
</%block>

