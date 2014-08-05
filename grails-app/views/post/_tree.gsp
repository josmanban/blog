<ul>
<g:each in="${posts}" var="post">
<g:render template="/post/minimal" model="[post:post]" />
<g:render template="/post/tree" model="[posts:post.hijos]" />
</g:each>
</ul>

