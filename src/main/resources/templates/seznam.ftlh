[#ftl]
[@c.page title="Seznam blogových zápisků"]
    [#assign x="Unknown"]
    <h1>Seznam blogových zápisků</h1>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Titulek</th>
            <th scope="col">Perex</th>
            <th scope="col">Datum publikování</th>
            <th scope="col">Autor</th>
        </tr>
        </thead>
        <tbody>
        [#list blogy as blog]
            <tr>
                <td>${blog.title!x}</td>
                <td>${blog.perex!x}</td>

[#--                <td>${osoba.datumNarozeni?date?string}</td>--]
[#--                <td>${blog.published?date?}</td>--]
                <td>${blog.published?date}</td>
                <td>${blog.author!x}</td>
            </tr>
        [/#list]
        </tbody>
    </table>
[/@c.page]
