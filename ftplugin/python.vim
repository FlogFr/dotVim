
let b:comment_leader = '# '

set foldmethod=indent

" for the code
" iab <buffer> KEY REPLACE_TEXT
ia <buffer> she #!/usr/bin/env python3
ia <buffer> mai if __name__ == '__main__':<CR>  print("doing main")
ia <buffer> uselog import logging<CR>logger = logging.getLogger(__name__)
ia <buffer> deb logger.debug(
ia <buffer> inf logger.info(
ia <buffer> war logger.warning(
ia <buffer> err logger.error(
ia <buffer> cri logger.critical(
ia <buffer> re return

ia <buffer> implog import logging<CR>logger = logging.getLogger(__name__)<CR>
