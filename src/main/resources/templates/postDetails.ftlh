[#ftl]
[@c.page title="Jeden post"]
    <h1>Detail individuálních postů</h1>
    <div class="detail">
        <div class="singlePost">
            <table class="u-full-width">
                <thead>
                <tr>
                    <th>Jméno autora</th>
                    <th>Titulek postu</th>
                    <th>První odstavec postu</th>
                    <th>Text postu</th>
                    <th>Datum publikace</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                        <td>${singlePost.author?no_esc}</td>
                        <td>${singlePost.title?no_esc}</td>
                        <td>${singlePost.perex?no_esc!''}</td>
                        <td>${singlePost.body?no_esc!''}</td>
                        <td>${singlePost.published?date?string}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

    [@c.controls /]

[/@c.page]
