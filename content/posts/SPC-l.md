+++
date = "2015-09-17T00:00:00-05:00"
publishdate = "2015-09-17T00:00:00-05:00"
description = "Use `SPC l` to jump to any line."
title = "Jump to any line in a buffer"
+++
You can jump to any line in a buffer with `evil-ace-jump-line-mode` (`SPC l`).
Hit the shortcut and then the letter of a line in the popup and you'll go there.
You can get back quickly with <code>SPC \`</code>

{{< gfycat FaintThriftyAlligator >}}

Note: as of this writing the function on this key is `evil-ace-jump-line-mode`,
but it [will be changing](https://github.com/syl20bnr/spacemacs/pull/2574) to
`avy-goto-line` in the next release.

{{< githubCredit srid >}}

**Update February 2016**: `SPC l` is now the new layouts engine. This
functionality is now located at `SPC y`. Thanks Caolite O'Connor for the catch!
