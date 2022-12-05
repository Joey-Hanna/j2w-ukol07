[#ftl]
[@c.page title="Jeden post"]
<h1>Jeden post</h1>
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
                <td>${singlePost.author?no_esc}</td>
                <td>${singlePost.title?no_esc}</td>
                <td>${singlePost.perex?no_esc}</td>
                <td>${singlePost.body?no_esc}</td>
                <td>${singlePost.published?date?string?no_esc}</td>
            </tr>
        </tbody>
    </table>
    [@c.pager /]
    [@c.controls /]

[/@c.page]