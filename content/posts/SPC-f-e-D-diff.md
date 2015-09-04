+++
date = "2015-09-01T10:00:00-05:00"
description = "Use `SPC f e D` to diff your `.spacemacs`"
title = "Diff your .spacemacs after upgrades"
aliases = ["/post/128111786459/diff-your-spacemacs-after-upgrades"]
+++
When you upgrade Spacemacs, keep your dotfile in sync by using
`ediff-dotfile-and-template` (`SPC f e D`). This will enter an ediff session
with the .spacemacs template and your personal .spacemacs. Use `n` and `p` to
move between regions and `a`/`b` to copy changes from the template to your
.spacemacs. When you're done, quit and save the changes with `q`.

{{< gfycat FaintSinfulBluewhale >}}

{{< githubCredit BrianHicks >}}
