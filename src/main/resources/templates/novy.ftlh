[#ftl]
<p>Fromulář pro vložení příspěvku</p>

<form action="/nahraj" method="post">
    <div>
        <label for="slug">Slug</label>
        <input id="slug" type="text" name="slug">
    </div>

    <div>
        <label for="author">Autor</label>
        <input id="author" type="text" name="author.name">
    </div>

    <div>
        <label for="perex">Perex</label>
        <input id="perex" type="text" name="perex">
    </div>

    <div>
        <label for="body">Body</label>
        <input id="body" type="text" name="body">
    </div>

    <div>
        <label for="title">Title</label>
        <input id="title" type="text" name="title">
    </div>

    <div>
        <label for="published">Published</label>
        <input id="published" type="date" name="published">
    </div>

    <button type="submit">Odeslat</button>

</form>
