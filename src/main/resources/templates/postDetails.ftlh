[#ftl]
[#--
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Posts details</title>
</head>
<body>
<div class="detail">
    <div class="postDetails">
    <div class>${singlePost.author}</div>
    <div class>${singlePost.title}</div>
    <div class>${singlePost.perex?no_esc}</div>
    <div class>${singlePost.body?no_esc}</div>
    <div class>${singlePost.published?date?string}</div>
    </div>
</div>
</body>
</html>
--]


[@c.page title="Jeden post"]
    <h1>Jeden post</h1>
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
            <div class="detail">
                [#list singlePost as singlePost]
                <div class="singlePost">
                    <td>${singlePost.author}</td>
                    <td>${singlePost.title}</td>
                    <td>${singlePost.perex?no_esc!''}</td>
                    <td>${singlePost.body?no_esc!''}</td>
                    <td>${singlePost.published?date?string}</td>
                </div>
                [/#list]
            </div>
        </tr>
        </tbody>
    </table>

    [@c.pager /]
    [@c.controls /]

[/@c.page]
