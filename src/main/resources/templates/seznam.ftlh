[#ftl]
[@c.page title="Seznam blogových zápisků"]
    [#assign x="Unknown"]
    <div class="container">
    <div class="heading">
        <h1 class="heading-primary">Seznam blogových zápisků</h1>
        <a href="/administrace" class="btn btn--full admin">Administrace</a>
    </div>
    [#list blogy.content]
    <table class="table">
        <thead>
        <tr>
            <th class="heading-secondary">Pořadí blogu</th>
            <th class="heading-secondary">Titulek</th>
[#--            <th class="heading-secondary">Perex</th>--]
            <th class="heading-secondary">Datum publikování</th>
            <th class="heading-secondary">Autor</th>
            <th class="heading-secondary">Odkaz</th>
        </tr>
        </thead>
        <tbody>
        [#items as blog]
            <tr>
                <td>${blog?counter}</td>
                <td>${blog.title!x}</td>
[#--                <td>${blog.perex!x}</td>--]
                <td>${blog.published?date}</td>
                <td>${blog.author!x}</td>
                <td><a class="btn btn--outline" href="/post/${blog.slug}">Odkaz</a></td>
            </tr>
        [/#items]
    [/#list]
        </tbody>
    </table>
    <div class="container-button">
        [@c.pager /]
    </div>
    </div>
[/@c.page]






