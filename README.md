Align Fats
==

Align hash rockets, fat arrows, whatever you want to call them.  By default,
binds to the `<LEADER>` key (usually comma), then `a`.  This works everywhere,
not just in Puppet code.  If you'd like to disable the automatic behavior of
aligning fat arrows after the press of `>` in insert mode in Puppet files then
set in `~/.vimrc`:

    let g:puppet_align_hashes = 0


Installation
==

The `AlignFats()` function requires
[tabularize](https://github.com/godlygeek/tabular).

Add to your bundle, typically `~/.vimrc.bundles.local`

    Bundle 'godlygeek/tabular'
    Bundle 'jeffmccune/vim-alignfats'
