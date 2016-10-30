" Code-formatting standards ...

set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab

"All 'include' directories underneath the 'src' directory...
let pg_src_dir = expand('<sfile>:p:h')

let pg_ipath_globs = [
    \ pg_src_dir . '/include',
    \ pg_src_dir . '/**/include',
    \ '/usr/include',
    \ '/usr/local/include', 
    \ '/usr/local/llvm-3.7/include'
    \ ]

let path_as_list=split(&path, ',')

for i in pg_ipath_globs
    if index(path_as_list, i) < 0
        call add( path_as_list, i )
    endif
endfor

let &path = join(path_as_list, ',')

