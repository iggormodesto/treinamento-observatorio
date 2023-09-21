<header 
  class="bg-white border-bottom"
  id="banner" 
  role="banner"
>
  <div class="bg-primary">
    <div class="container d-flex justify-content-between">
      <ul class="nav">
        <li class="nav-item">
          <a class="nav-link" href="#content">
            <span class="badge badge-light">1</span>
            Ir para o conteúdo
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#navigation">
            <span class="badge badge-light">2</span>
            Ir para o menu
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#footer">
            <span class="badge badge-light">3</span>
            Ir para o rodapé
          </a>
        </li>
      </ul>

      <ul class="nav">
        <#if websites?has_content>
          <#list websites as curWebSite>
            <li class="nav-item">
              <a 
                class="btn btn-unstyled nav-btn nav-btn-monospaced" 
                href="${curWebSite.getUrl()}"
                target="_blank"
              >
                <@socialMediaIcon url=curWebSite.getUrl() />
              </a>
            </li>
          </#list>
        </#if>
      </ul>      
    </div>
  </div>

  <div id="heading">
    <div aria-level="1" class="site-title" role="heading">
      <a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
        <img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
      </a>

      <#if show_site_name>
        <span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
          ${site_name}
        </span>
      </#if>
    </div>
  </div>

  <#if !is_signed_in>
    <a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
  </#if>

  <#if has_navigation && is_setup_complete>
    <#include "${full_templates_path}/navigation.ftl" />
  </#if>
</header>