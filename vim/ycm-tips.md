## Common
Cancel hover window
```
<leader>D
```

## YCM extra funcs
```
:YcmCompleter <...e.g: GotoDeclaration, GoToReferences>
```

## Debug
```
:YcmDebugInfo
:YcmDiags
<leader>d
```

## Error lists
```
:lopen
:lclose
:lnext
:lprevious
```

## Useful vim configs
```
let g:ycm_auto_trigger = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_show_diagnostics_ui = 1
let g:ycm_global_ycm_extra_conf = './ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 1
let g:ycm_complete_in_comments_and_strings=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_key_list_select_completion=['<Down>']
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_min_num_of_chars_for_completion = 2
"let g:ycm_add_preview_to_completeopt = 1 " enable preview window
"let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_max_num_candidates = 50
"let g:ycm_key_invoke_completion = '<C-j>'
```
