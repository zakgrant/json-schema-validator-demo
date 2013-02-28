<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set var="pageName" value="jjschema"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>POJO to JSON Schema</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="Java source to JSON Schema conversion">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <!--
        Even though it is recommended that scripts be last in the page, some
        must be at the top of the page, otherwise IE breaks. Duh.

        As I don't know which ones are susceptible to break, for now, everything
        goes at the top :/
    -->
    <script src="js/ext/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/ext/jquery.qtip-1.0.0-rc3.js" type="text/javascript"></script>
    <script src="js/common.js" type="text/javascript"></script>
    <script src="js/${pageName}.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(main);
    </script>
</head>
<body>
<div class="horizMenu">
    <ul>
        <li>Select page:</li>
        <li><a href="index.jsp">Instance validation</a></li>
        <li><a href="syntax.jsp">Schema syntax validation</a></li>
        <li><a href="jjschema.jsp">Source code to JSON Schema</a></li>
        <li><a href="schema2pojo.jsp">JSON Schema to source code</a></li>
        <li><a href="about.html">About this site</a></li>
    </ul>
</div>
<div id="top">
    <div class="noscript">
        <p>
            <span style="font-weight: bold">This site requires Javascript to run
            correctly</span>
        </p>
    </div>

    <p>This page allows you to generate a JSON Schema out of a Java
    source code. Paste the source code into the text area, then press the <span
    style="font-family: monospace">Generate schema</span> button. Notes:</p>

    <ul>
        <li>it is safe to put static initializers in the code: they will not be
        executed;</li>
        <li>on failure (compilation errors), the compiler messages are displayed
        instead, with line and column information.</li>
    </ul>

    <p>Software used: <a
    href="https://github.com/reinert/JJSchema">JJSchema</a>.</p>

</div>

<form id="validate" method="POST">
    <div id="left" class="content">
        <div class="horiz">
            <label for="source">Source code:</label>
        </div>
        <textarea name="source" rows="20" cols="20" id="source"></textarea>
        <div class="horiz">
            <input type="submit" value="Generate schema">
            <span>(you can also <a id="load" href="#">load an example source
            file</a>)</span>
        </div>
    </div>
</form>
<div id="right" class="content">
    <div class="horiz">
        <label for="results">Generation result:</label>
        <span class="error starthidden" id="generationFailure">failure</span>
        <span class="success starthidden" id="generationSuccess">success</span>
    </div>
    <textarea name="results" rows="20" cols="20" id="results"
        readonly="readonly"></textarea>
</div>
</body>
</html>