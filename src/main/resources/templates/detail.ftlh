[#ftl]

[@c.page title="Blog"]
      <div class="container-post">
         <a class="btn btn--full back" href="/">Zpět</a>
         <h1 class="heading-primary">${detailSlug.title}</h1>
         <div class="heading-author">
            <img class="author-img" src="https://thispersondoesnotexist.com/" alt="Author">
            <h2 class="heading-secondary">${detailSlug.author}</h2>
         </div>

         <div class="odstavce-text">
             ${detailSlug.perex?no_esc}
             ${detailSlug.body?no_esc}
         </div>
      </div>

[/@c.page]
