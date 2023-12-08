[#ftl]
[#macro page title="Školní evidence"]
    <!doctype html>
    <html lang="cs">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
[#--        <title>${title}</title>--]
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
    <div class="container">
        [#nested]
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
    </html>
[/#macro]


[#macro totalCount]
    <div class="totalCount">
        [#if osoby.totalElements == 1]
            Celkem nalezen <strong>${osoby.totalElements}</strong> záznam.
        [#elseif osoby.totalElements <= 4]
            Celkem nalezeny <strong>${osoby.totalElements}</strong> záznamy.
        [#else ]
            Celkem nalezeno <strong>${osoby.totalElements}</strong> záznamů.
        [/#if]
    </div>

[/#macro]

[#macro pager]
    <div class="pager">
        [@pagerLink page=blogy.number - 1 active=blogy.first text="←" /]
        [@pagerLink page=blogy.number + 1 active=blogy.last text="→" /]
    </div>
[/#macro]

[#macro pagerLink page text active]
    [#if active]
        <span class="page active">${text}</span>
    [#else ]
        <a href="${createURL({"size": blogy.size, "page": page})}" class="page">${text}</a>
    [/#if]
[/#macro]