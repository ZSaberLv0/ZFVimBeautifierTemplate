if !exists('g:ZFBeautifierSetting')
    let g:ZFBeautifierSetting = {}
endif

if !exists("g:ZFBeautifierSetting['java']")
    let g:ZFBeautifierSetting['java'] = {
                \ 'template' : [
                \     't:sourcecode',
                \ ],
                \ 'replacePost' : [
                \     ['\n *\{', ' \{'],
                \ ],
                \ }
endif

