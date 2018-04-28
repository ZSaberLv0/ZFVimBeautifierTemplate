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
                \     ['" *: *"', '" : "'],
                \     ['" *: *\[', '" : \['],
                \     ['" *: *\{', '" : \{'],
                \
                \     ['\[', '\[\r'],
                \     ['\{', '\{\r'],
                \     ['\]', '\r\]'],
                \     ['\}', '\r\}'],
                \
                \     ['" *,', '",\r'],
                \     ['\] *,', '\],\r'],
                \     ['\} *,', '\},\r'],
                \ ],
                \ 'updateIndent' : 1,
                \ 'preserveEmptyLineNum' : 0,
                \ }
endif

