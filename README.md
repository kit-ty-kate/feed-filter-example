feed-filter-example is an OCaml example program that allows you to filter atom feeds entries using Syndic

In the present example it filter titles for every entries and discards those
containing "commented on". It is used as a small personal tool to filter my
personal github atom feed (see the "Subscribe to your news feed" link at the
bottom of github's main page).

You can notice that I used ocaml-containers in this example to match the string,
but feel free to use whichever your want.
Note also that xhtml titles are not handled in this example.
Of course, you can also change the code to parse RSS (1 or 2) instead of Atom.

Syndic documentation: https://cumulus.github.io/Syndic/


Feel free to take & modify it as you which.
Enjoy :)
