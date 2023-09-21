<#-- Este arquivo permite que você substitua e defina novas variáveis FreeMarker -->

<#-- SERVIÇOS -->
<#assign WebsiteLocalService = serviceLocator.findService("com.liferay.portal.kernel.service.WebsiteLocalService") />

<#-- VARIÁVEIS GLOBAIS -->
<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "borderless"}) />
<#assign websites = WebsiteLocalService.getWebsites() />

<#--  RETORNA O ÍCONE DA REDE SOCIAL A PARTIR DA URL  -->
<#macro socialMediaIcon url>
  <#if url?contains("facebook")>
    <i class="lab la-facebook"></i>
  <#elseif url?contains("fb.me")>
    <i class="lab la-facebook"></i>
  <#elseif url?contains("instagram")>
    <i class="lab la-instagram"></i>
  <#elseif url?contains("linkedin")>
    <i class="lab la-linkedin"></i>
  <#elseif url?contains("twitter")>
    <i class="lab la-twitter"></i>
  <#elseif url?contains("t.co")>
    <i class="lab la-twitter"></i>
  <#elseif url?contains("youtube")>
    <i class="lab la-youtube"></i>
  <#elseif url?contains("youtu.be")>
    <i class="lab la-youtube"></i>
  <#elseif url?contains("flickr")>
    <i class="lab la-flickr"></i>
  <#elseif url?contains("eblog")>
    <i class="lab la-blogger-b"></i>
  <#elseif url?contains("telegram")>
    <i class="lab la-telegram"></i>
  <#elseif url?contains("t.me")>
    <i class="lab la-telegram"></i>
  <#elseif url?contains("whatsapp")>
    <i class="lab la-whatsapp"></i>
  <#else>
    <i class="las la-link"></i>
  </#if>
</#macro>