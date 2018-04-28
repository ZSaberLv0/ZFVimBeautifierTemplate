if !exists('g:ZFBeautifierSetting')
    let g:ZFBeautifierSetting = {}
endif

if !exists("g:ZFBeautifierSetting['xml']")
    let g:ZFBeautifierSetting['xml'] = {
                \ 'template' : [
                \     't:default',
                \ ],
                \ 'templatePost' : [
                \     't:replace_extraSpace',
                \ ],
                \ 'replace' : [
                \     ['> *<', '>\r<'],
                \     ['([a-z_0-9]+) *= *("[^"]*") *([^ />])', '\1 = \2\r\3'],
                \ ],
                \ 'updateIndent' : 1,
                \ 'preserveEmptyLineNum' : 1,
                \ }
endif

if !exists("g:ZFBeautifierSetting['html']")
    let g:ZFBeautifierSetting['html'] = {
                \ 'template' : [
                \     'xml',
                \ ],
                \ }
endif
if !exists("g:ZFBeautifierSetting['xhtml']")
    let g:ZFBeautifierSetting['xhtml'] = {
                \ 'template' : [
                \     'xml',
                \ ],
                \ }
endif
if !exists("g:ZFBeautifierSetting['htm']")
    let g:ZFBeautifierSetting['htm'] = {
                \ 'template' : [
                \     'xml',
                \ ],
                \ }
endif

