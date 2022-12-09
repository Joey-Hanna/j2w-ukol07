[#ftl]
[@c.page title="Seznam všech postů"]
    <h1>Seznam všech postů</h1>
    [#list posts.content as singlePost]
    <a href="/detail/${singlePost.slug}">?
        <table class="u-full-width">
            <thead>
            <tr>
                <th>Jméno autora</th>
                <th>Titulek postu</th>
                <th>Kód prvního odstavce postu</th>
                <th>Text postu</th>
                <th>Datum publikace</th>
            </tr>
            </thead>
            <tbody>

            <tr>
                <td>${singlePost.author?no_esc!''}</td>
                <td>${singlePost.title?no_esc!''}</td>
                <td>${singlePost.perex?no_esc!''}</td>
                <td>${singlePost.body?no_esc!''}</td>
                <td>${singlePost.published?date?string}</td>
            </tr>
            </tbody>
        </table>
    [#else]
        <div>Seznam je prázdný.</div>
        </a>
    [/#list]


    <div class="totalCount">Celkem nalezeno ${posts.totalElements} postů.</div>

    [@c.pager /]
    [@c.controls /]

[/@c.page]