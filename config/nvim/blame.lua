require('gitblame').setup {
     --Note how the `gitblame_` prefix is omitted in `setup`
    enabled = false,
    message_template = '  <author> • <summary> • <date> • <sha>',
    display_virtual_text = true,
}
