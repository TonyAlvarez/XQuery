(: XQuery main module :)

module namespace e = 'http://example.com/enteros';

declare function e:suma($a as xs:integer, $b as xs:integer) as item()

{
<total>{$a + $b}</total>
};

declare function e:resta($a as xs:integer, $b as xs:integer) as item()

{
<total>{$a - $b}</total>
};


