if !exists('g:ZFBeautifierSetting')
    let g:ZFBeautifierSetting = {}
endif


if !exists("g:ZFBeautifierSetting['t:escape_backslash']")
    let g:ZFBeautifierSetting['t:escape_backslash'] = {
                \ 'escape' : [
                \     '\\.',
                \ ],
                \ }
endif
if !exists("g:ZFBeautifierSetting['t:escape_percent']")
    let g:ZFBeautifierSetting['t:escape_percent'] = {
                \ 'escape' : [
                \     '%[^ ]',
                \ ],
                \ }
endif


if !exists("g:ZFBeautifierSetting['t:escape_string_doublequote']")
    let g:ZFBeautifierSetting['t:escape_string_doublequote'] = {
                \ 'escape' : [
                \     '"[^"]+"',
                \ ],
                \ }
endif
if !exists("g:ZFBeautifierSetting['t:escape_string_singlequote']")
    let g:ZFBeautifierSetting['t:escape_string_singlequote'] = {
                \ 'escape' : [
                \     "'[^']'",
                \ ],
                \ }
endif
if !exists("g:ZFBeautifierSetting['t:escape_string_backquote']")
    let g:ZFBeautifierSetting['t:escape_string_backquote'] = {
                \ 'escape' : [
                \     '`+[^`]`+',
                \ ],
                \ }
endif
if !exists("g:ZFBeautifierSetting['t:escape_string']")
    let g:ZFBeautifierSetting['t:escape_string'] = {
                \ 'template' : [
                \     't:escape_string_doublequote',
                \     't:escape_string_singlequote',
                \     't:escape_string_backquote',
                \ ],
                \ }
endif


if !exists("g:ZFBeautifierSetting['t:replace_tab']")
    let g:ZFBeautifierSetting['t:replace_tab'] = {
                \ 'replace' : [
                \     ['\t', '    '],
                \ ],
                \ }
endif
if !exists("g:ZFBeautifierSetting['t:replace_tailSpace']")
    let g:ZFBeautifierSetting['t:replace_tailSpace'] = {
                \ 'replace' : [
                \     [' +$', ''],
                \ ],
                \ }
endif
if !exists("g:ZFBeautifierSetting['t:replace_extraSpace']")
    let g:ZFBeautifierSetting['t:replace_extraSpace'] = {
                \ 'replace' : [
                \     ['  +', ' '],
                \ ],
                \ }
endif
if !exists("g:ZFBeautifierSetting['t:replace_unicodePunctuation']")
    let g:ZFBeautifierSetting['t:replace_unicodePunctuation'] = {
                \ 'template' : ['t:replace_tab'],
                \ 'templatePost' : ['t:replace_tailSpace'],
                \ 'replace' : [
                \     ['([^ ]) *\%uFF08', '\1 ('],
                \     ['\%uFF08', '('],
                \     ['\%uFF09 *', ') '],
                \
                \     ['([^ ]) *\%u3010', '\1 ['],
                \     ['\%u3010', '['],
                \     ['\%u3011 *', '] '],
                \
                \     ['([^ ]) *\%u300A', '\1 <'],
                \     ['\%u300A', '<'],
                \     ['\%u300B *', '> '],
                \
                \     ['([^ ]) *\%u201C', '\1 "'],
                \     ['\%u201C', '"'],
                \     ['\%u201D *', '" '],
                \
                \     ['([^ ]) *\%u2018', "\1 '"],
                \     ['\%u2018', "'"],
                \     ['\%u2019 *', "' "],
                \
                \     ['\%uFF0C *', ', '],
                \     ['\%u3001 *', '. '],
                \     ['\%u3002 *', '. '],
                \     ['\%uFF1A *', ': '],
                \     ['\%uFF1B *', '; '],
                \     ['\%uFF01 *', '! '],
                \     ['\%uFF1F *', '? '],
                \     ['\%u00B7', '`'],
                \     ['\%u2026+ *', '... '],
                \     [' *\%u2014+ *', ' \- '],
                \
                \     ['([\)\]>"]) +([,.:;!?>])', '\1\2'],
                \     ["(') +([,.:;!?>])", '\1\2'],
                \ ],
                \ }
endif

