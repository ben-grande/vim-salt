" Credits:    https://github.com/vmware-archive/salt-vim/blob/master/ftdetect/sls.vim
" SPDX-FileCopyrightText: 2012 Seth House <seth@eseth.com>
" SPDX-FileCopyrightText: 2014 SaltStack <https://saltproject.io>
" SPDX-License-Identifier: Apache-2.0

function! DetectSalt()
  if !did_filetype()
    if match(getline(1), '^#!py') > -1
      setfiletype python
    else
      setfiletype salt
    endif
  endif
endfunction

autocmd BufNewFile,BufRead *.{sls,top},Saltfile,/etc/salt/*
      \ call DetectSalt()
