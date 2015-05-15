(: XQuery main module :)
<librosCaros> {

    for $l in doc("books.xml")//book
    let $p := $l//price
    where $p/node() > 30.00
    order by $p
    return <libro>{$l/title/node()}</libro>

} </librosCaros>