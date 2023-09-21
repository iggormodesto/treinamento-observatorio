<!DOCTYPE html>

<#include init />

<html 
	class="${root_css_class}" 
	dir="<@liferay.language key='lang.dir' />" 
	lang="${w3c_language_id}"
>
	<head>
		<title>${html_title}</title>
		<meta content="initial-scale=1.0, width=device-width" name="viewport" />
		<@liferay_util["include"] page=top_head_include />
		
		<#--  IMPORTAÇÕES  -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	</head>

	<body class="${css_class}">
		<@liferay_ui["quick-access"] contentId="#main-content" />
		<@liferay_util["include"] page=body_top_include />

		<div class="container-fluid position-relative d-flex flex-column min-vh-100" id="wrapper">
			<@liferay.control_menu />
			<#include "${full_templates_path}/header.ftl" />

			<main id="content" class="flex-grow-1">
				<h2 
					class="hide-accessible sr-only" 
					role="heading" 
					aria-level="1"
				>
					${htmlUtil.escape(the_title)}
				</h2>

				<#if selectable>
					<@liferay_util["include"] page=content_include />
				<#else>
					${portletDisplay.recycle()}

					${portletDisplay.setTitle(the_title)}

					<@liferay_theme["wrap-portlet"] page="portlet.ftl">
						<@liferay_util["include"] page=content_include />
					</@>
				</#if>
			</main>

			<#include "${full_templates_path}/footer.ftl" />
		</div>

		<@liferay_util["include"] page=body_bottom_include />
		<@liferay_util["include"] page=bottom_include />

		<!-- inject:js -->
		<!-- endinject -->
	</body>
</html>