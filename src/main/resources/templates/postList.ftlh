[#ftl]
[@c.page title="Seznam všech postů"]
    <h1>Seznam všech postů</h1>

    [#list posts.content]
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
            [#items as singlePost]
                <tr>
                    <td>${singlePost.author?no_esc}</td>
                    <td>${singlePost.title?no_esc}</td>
                    <td>${singlePost.perex?no_esc}</td>
                    <td>${singlePost.body?no_esc}</td>
                    <td>${singlePost.published?date?string?no_esc}</td>
                </tr>
            [/#items]
            </tbody>
        </table>
    [#else]
        <div>Seznam je prázdný.</div>
    [/#list]

    <div class="totalCount">Celkem nalezeno ${posts.totalElements} postů.</div>

    [@c.pager /]
    [@c.controls /]

[/@c.page]