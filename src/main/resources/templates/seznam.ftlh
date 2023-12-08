[#ftl]
[@c.page title="Seznam blogových zápisků"]
    [#assign x="Unknown"]
    <h1>Seznam blogových zápisků</h1>
    [#list blogy.content]
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Pořadí blogu</th>
            <th scope="col">Titulek</th>
            <th scope="col">Perex</th>
            <th scope="col">Datum publikování</th>
            <th scope="col">Autor</th>
            <th scope="col">Odkaz</th>
        </tr>
        </thead>
        <tbody>
        [#items as blog]
            <tr>
                <td>${blog?counter}</td>
                <td>${blog.title!x}</td>
                <td>${blog.perex!x}</td>
                <td>${blog.published?date}</td>
                <td>${blog.author!x}</td>
                <td><a href="/post/${blog.slug}">Odkaz</a></td>
            </tr>
        [/#items]
    [/#list]
        </tbody>
    </table>
[@c.pager /]
[/@c.page]






