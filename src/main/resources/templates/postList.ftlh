[#ftl]
[#--
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Posts list</title>
</head>
<body>
    <div class="postList">
        [#list posts as singlePost]
        <a href="/details/${singlePost.slug}">
            <div class>${singlePost.author}</div>
            <div class>${singlePost.title}</div>
            <div class>${singlePost.perex?no_esc}</div>
            <div class>${singlePost.body?no_esc}</div>
            <div class>${singlePost.published?date?string}</div>
        </a>
        [/#list]
    </div>
</body>
</html>
--]

[@c.page title="Seznam všech postů"]
    <h1>Seznam všech postů</h1>
    <div class="posts">
    [#list posts.content as singlePost]
    <a href="/detail/${singlePost.slug}">?
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
                <td>${singlePost.author}</td>
                <td>${singlePost.title}</td>
                <td>${singlePost.perex?no_esc}</td>
                <td>${singlePost.body?no_esc}</td>
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
    </div>

[/@c.page]
