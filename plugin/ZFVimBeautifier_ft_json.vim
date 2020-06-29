if !exists('g:ZFBeautifierSetting')
    let g:ZFBeautifierSetting = {}
endif

if !exists("g:ZFBeautifierSetting['json']")
    let g:ZFBeautifierSetting['json'] = {
                \ 'template' : [
                \     't:default',
                \ ],
                \ 'templatePost' : [
                \     't:replace_extraSpace',
                \ ],
                \ 'replace' : [
                \     ['"[ \r\n]*:[ \r\n]*(?=["\[\{0-9]|true|false)', '" : '],
                \
                \     ['^[ \r\n]*([\[\{])', '\1\r'],
                \     [':[ \r\n]*([\[\{])', ': \1\r'],
                \     ['([\[,])[ \r\n]*([\[\{])', '\1\r\2\r'],
                \     ['([\]\}])[ \r\n]*(?=[,\]\}]|$)', '\r\1'],
                \
                \     ['(?<=["\]\}0-9]|true|false)[ \r\n]*,[ \r\n]*', ',\r'],
                \ ],
                \ 'updateIndent' : 1,
                \ 'preserveEmptyLineNum' : 0,
                \ }
endif

