<html>

<head>
    <title>System Info</title>
    <meta name="layout" content="kickstart" />
</head>

<body>

	<content tag="header">
	<header id="Header" class="jumbotron masthead">
		<div class="inner">
			<div class="container">
<%--				<span class="pageTitle"><g:layoutTitle default="${meta(name:'app.name')}" /></span>--%>
				<h1 class="pageTitle">Info about the ${meta(name:'app.name')} system</h1>
				<p>This page presents some information about the ${meta(name:'app.name')} system.</p>
			</div>
		</div>
	</header>
	</content>

<section id="intro">
	<h1>Info about the ${meta(name:'app.name')} system</h1>
	<p class="lead">This page presents some information about the ${meta(name:'app.name')} system.
	</p>
</section>

<section id="resources">
     <h1>Used Resources</h1>
     <ul>
         <li>Web Layout: <a href ="http://twitter.github.com/bootstrap/">Bootstrap</a>, from Twitter 
         Licensed under the Apache License v2.0. Documentation licensed under CC BY 3.0. 
         (@TwBootstrap , http://twitter.github.com/bootstrap/)</li>
     </ul>
</section>

<section id="application">
     <h1>Application Status</h1>
     <ul>
         <li>App version: <g:meta name="app.version"></g:meta></li>
         <li>Grails version: <g:meta name="app.grails.version"></g:meta></li>
         <li>Groovy version: ${org.codehaus.groovy.runtime.InvokerHelper.getVersion()}</li>
         <li>JVM version: ${System.getProperty('java.version')}</li>
         <li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
         <li>Domains: ${grailsApplication.domainClasses.size()}</li>
         <li>Services: ${grailsApplication.serviceClasses.size()}</li>
         <li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
     </ul>
</section>

<section id="resources">
     <h1>Installed Plugins</h1>
     <ul>
         <g:set var="pluginManager"
                value="${applicationContext.getBean('pluginManager')}"></g:set>

         <g:each var="plugin" in="${pluginManager.allPlugins}">
             <li>${plugin.name} - ${plugin.version}</li>
         </g:each>

     </ul>
</section>

</body>

</html>
