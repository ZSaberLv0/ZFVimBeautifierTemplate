if !exists('g:ZFBeautifierSetting')
    let g:ZFBeautifierSetting = {}
endif

if !exists("g:ZFBeautifierSetting['c']")
    let g:ZFBeautifierSetting['c'] = {
                \ 'template' : [
                \     't:sourcecode',
                \ ],
                \ }
endif

if !exists("g:ZFBeautifierSetting['cpp']")
    let g:ZFBeautifierSetting['cpp'] = {
                \ 'template' : [
                \     'c',
                \ ],
                \ }
endif

