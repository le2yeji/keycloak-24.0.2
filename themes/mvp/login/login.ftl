<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        🧡MVP KEYCLOAK🧡
    <#elseif section = "header">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <#elseif section = "message">
    <#--  type종류: success, warning, error, info  -->
        <div class="alert alert-${message.type}">
            <span class="message-text">${message.summary?no_esc}</span>
        </div>
    <#elseif section = "app-head">
        <div class="app-name-wrapper">
            <img src="${url.resourcesPath}/img/sh.png" />
            <#--  <h1 class="app-name">커스텀 로그인 폼</h1>  -->
        </div>
    <#elseif section = "form">
        <#if realm.password>
            <div class="app-form-wrapper">
                <form id="kc-form-login" class="app-form" onsubmit="return true;" action="${url.loginAction}" method="post">
                    <label>
                        <div>❤️ID❤️️</div>
                        <input id="username" class="login-field" type="text" name="username" placeholder="admin">
                    </label>

                    <label>
                        <div>🩷PASSWORD🩷</div>
                        <input id="password" class="login-field" type="password" name="password" placeholder="새~4!">
                    </label>

                    <button class="submit" type="submit" style="background-color: lightpink; color: black;">로그인</button>
                </form>
            </div>
        </#if>
        <#if social.providers??>
            <!-- 소셜 로그인 제공 -->
        </#if>
    </#if>
</@layout.registrationLayout>