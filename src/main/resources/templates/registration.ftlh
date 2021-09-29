<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
Add new User
<#--    ${message?ifExists} old method-->
    ${message!}
<@l.login "/registration" true/>
</@c.page>
