augroup filetypedetect
        au BufNewFile,BufRead *.wiki,*.twiki     setf twiki
        au BufNewFile,BufRead */twiki.corp.yahoo.com.*.txt setf twiki
augroup END
