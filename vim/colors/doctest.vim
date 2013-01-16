syntax include @PY syntax/python.vim

syntax region doctest_value start=+^\s\{2,4}\s*[^>. ]+ end=+$+ contained
syntax region doctest_code start=+\(\s\+[>.]\{3}\)\@<=.*+ end=+$+ contains=@PY contained
syntax match  doctest_marker "\s\+[>.]\{3}" contained

syntax region doctest start=+\s\+[>.]\{3}+ end=+^$+ contains=doctest_value,doctest_marker,doctest_code
syntax region doctest_literal start=+`\++ end=+`\++

syntax region doctest_header start=+=\+\n\w\++ start=+\w.\+\n=\++ end=+=$+
syntax region doctest_header start=+-\+\n\w\++ start=+\w.\+\n-\++ end=+-$+
syntax region doctest_header start=+\*\+\n\w\++ start=+\w.\+\n\*\++ end=+\*$+

syntax region doctest_note start=+\.\{2} \[+ end=+(\n\n)\|\%$+

hi link doctest_header Statement
hi link doctest Special
hi link doctest_marker Special
hi link doctest_value Define
hi link doctest_literal Comment
hi link doctest_note Comment
