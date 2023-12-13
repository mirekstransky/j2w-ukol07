[#ftl]

[@c.page title="Vložení zápisku"]
<section class="section-cta">
    <div class="container">
        <div class="cta">
            <div class="cta-text-box">
                <h2 class="heading-secondary">Blogový formulář</h2>
                <p class="cta-text">
                    Formulář pro vložení zápisku do databáze !
                </p>

                <form class="cta-form" action="/nahraj" method="post">
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

                    <button class="btn btn--form" type="submit">Odeslat</button>

                </form>
            </div>
            <div    class="cta-img-box"
                    role="img"
                    aria-label="czechitas"
            ></div>
        </div>
    </div>
</section>
[/@c.page]