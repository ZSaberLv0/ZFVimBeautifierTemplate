if !exists('g:ZFBeautifierSetting')
    let g:ZFBeautifierSetting = {}
endif

if !exists("g:ZFBeautifierSetting['t:default']")
    let g:ZFBeautifierSetting['t:default'] = {
                \ 'template' : [
                \     't:escape_backslash',
                \     't:escape_percent',
                \     't:escape_string',
                \ ],
                \ 'templatePost' : [
                \     't:replace_tailSpace',
                \ ],
                \ 'preserveEmptyLineNum' : 2,
                \ }
endif
if !exists("g:ZFBeautifierSetting['text']")
    let g:ZFBeautifierSetting['text'] = {
                \ 'template' : [
                \     't:default',
                \     't:replace_unicodePunctuation',
                \ ],
                \ 'templatePost' : [
                \     't:replace_extraSpace',
                \ ],
                \ }
endif


if !exists("g:ZFBeautifierSetting['t:sourcecode']")
    let g:ZFBeautifierSetting['t:sourcecode'] = {
                \ 'template' : [
                \     't:default',
                \     't:replace_tab',
                \ ],
                \ 'templatePost' : [
                \     't:replace_extraSpace',
                \ ],
                \ 'replace' : [
                \     ['([^ ]) *([\{\}])', '\1\r\2'],
                \     ['([\{\}]) *([^ ])', '\1\r\2'],
                \     ['(\n *){2,}([\{\}])', '\r\2'],
                \     ['([\{\}])(\n *){2,}([^ ])', '\1\r\3'],
                \
                \     [' +([\(\)\[\]])', '\1'],
                \     ['([\(\)\[\]]) +', '\1'],
                \
                \     [';+ *([^ ])', ';\r\1'],
                \     ['\} *(\n *);', '\};'],
                \     [' *, *', ', '],
                \     [' *([~!#%\^&\-\+=\|<>\/\?]+) *', ' \1 '],
                \
                \     [' *((\+\+)|(\-\-)) *', '\1'],
                \     ['([^a-z0-9_\(\)\[\]\{\}]) +=', '\1='],
                \     ['= +([^a-z0-9_\(\)\[\]\{\}])', '=\1'],
                \     ['(?<=\([^\(\)]+;) *\n *', ' '],
                \     ['= *\n *\{', '= \{'],
                \     ['\/(\**) (\*+)', '\/\1\2'],
                \     ['(\*+) (\**)\/', '\1\2\/'],
                \ ],
                \ 'updateIndent' : 1,
                \ 'preserveEmptyLineNum' : 2,
                \ }
endif

