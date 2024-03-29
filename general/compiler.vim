"░█████╗░░█████╗░███╗░░░███╗██████╗░██╗██╗░░░░░███████╗██████╗░░░░██╗░░░██╗██╗███╗░░░███╗
"██╔══██╗██╔══██╗████╗░████║██╔══██╗██║██║░░░░░██╔════╝██╔══██╗░░░██║░░░██║██║████╗░████║
"██║░░╚═╝██║░░██║██╔████╔██║██████╔╝██║██║░░░░░█████╗░░██████╔╝░░░╚██╗░██╔╝██║██╔████╔██║
"██║░░██╗██║░░██║██║╚██╔╝██║██╔═══╝░██║██║░░░░░██╔══╝░░██╔══██╗░░░░╚████╔╝░██║██║╚██╔╝██║
"╚█████╔╝╚█████╔╝██║░╚═╝░██║██║░░░░░██║███████╗███████╗██║░░██║██╗░░╚██╔╝░░██║██║░╚═╝░██║
"░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚═╝░░░░░╚═╝╚══════╝╚══════╝╚═╝░░╚═╝╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝

function! CompileJava()
    let l:filename = expand('%:t')
    let l:compile_command = 'javac -d d:\workspace\bin ' . l:filename
    let l:error_output = system(l:compile_command . ' 2>&1')
    if v:shell_error
        echo "Error de compilación:"
        echo l:error_output
    else
        echo "Compilación exitosa!"
    endif
endfunction

function! CompileCpp()
    let l:filename = expand('%:t')
    let l:compile_command = 'g++ ' . l:filename . ' -o ' . 'd:\workspace\bin\sol.exe -std=c++17 -march=native -Wall -pedantic -DDEBUG -DLOCAL'
    let l:error_output = system(l:compile_command . ' 2>&1')
    if v:shell_error
        echo "Error de compilación:"
        echo l:error_output
    else
        echo "Compilación exitosa!"
    endif
endfunction

function! RunJava()
    imap <silent><F1> <Esc> :w<CR> :call CompileJava()<CR>
    nmap <silent><F1> :w<CR> :call CompileJava()<CR>
    imap <F2> <Esc> :w<CR> :!java -cp d:\workspace\bin %:t < d:\workspace\samples\in
    nmap <F2> :w<CR> :!java -cp d:\workspace\bin %:t < d:\workspace\samples\in
    imap <F3> <Esc> :w<CR> :terminal java %<CR>i
    nmap <F3> :w<CR> :terminal java %<CR>i
endfunction

function! RunCpp()
    imap <silent><F1> <Esc> :w<CR> :call CompileCpp()<CR>
    nmap <silent><F1> :w<CR> :call CompileCpp()<CR>
    imap <F2> <Esc> :w<CR> :!d:\workspace\bin\sol.exe < d:\workspace\samples\in
    nmap <F2> :w<CR> :!d:\workspace\bin\sol.exe < d:\workspace\samples\in
    imap <F3> <Esc> :w<CR> :terminal d:\workspace\bin\sol.exe<CR>i
    nmap <F3> :w<CR> :terminal d:\workspace\bin\sol.exe<CR>i
endfunction

function! EditInputFiles()
    imap <F4> <Esc> :w<CR> :e d:\workspace\samples\in1<CR>
    nmap <F4> :w<CR> :e d:\workspace\samples\in1<CR>
    imap <F5> <Esc> :w<CR> :e d:\workspace\samples\in2<CR>
    nmap <F5> :w<CR> :e d:\workspace\samples\in2<CR>
    imap <F6> <Esc> :w<CR> :e d:\workspace\samples\in3<CR>
    nmap <F6> :w<CR> :e d:\workspace\samples\in3<CR>
endfunction
