<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="teammates.common.util.FrontEndLibrary" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ taglib tagdir="/WEB-INF/tags/instructor" prefix="ti" %>
<%@ taglib tagdir="/WEB-INF/tags/instructor/courseStudentDetails" prefix="csd" %>
<c:set var="jsIncludes">
    <script type="text/javascript" src="<%= FrontEndLibrary.TINYMCE.getLibrarySource() %>"></script>
    <script type="text/javascript" src="/js/richTextEditor.js"></script>
    <script type="text/javascript" src="/js/instructor.js"></script>
    <script type="text/javascript" src="/js/contextualcomments.js"></script>
    <script>
        var isShowCommentBox = ${data.commentBoxShown};
        var commentRecipient = '${data.commentRecipient}';
    </script>
</c:set>
<ti:instructorPage pageTitle="TEAMMATES - Instructor" bodyTitle="Student Details" jsIncludes="${jsIncludes}">
    <t:statusMessage statusMessagesToUser="${data.statusMessagesToUser}" />
    <c:if test="${not empty data.studentProfile}">
        <csd:studentProfile student="${data.studentProfile}"/>
    </c:if>
    <csd:studentInformationTable studentInfoTable="${data.studentInfoTable}" />
    <c:if test="${not empty data.studentProfile}">
        <ti:moreInfo student="${data.studentProfile}" />
    </c:if>
</ti:instructorPage>