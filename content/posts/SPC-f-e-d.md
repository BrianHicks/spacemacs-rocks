+++
date = "2015-08-12T10:00:00-05:00"
description = "Use `SPC f e d` to get to your `.spacemacs` file quickly"
title = "Go to your .spacemacs (or create one)"
aliases = ["/post/126527346916/go-to-your-spacemacs-or-create-one"]
+++
From anywhere in Spacemacs, you can run `SPC f e d` and you'll get your
`.spacemacs` file.

{{< gfycat VainOptimalGuineafowl >}}

NB: If you have `.spacemacs` symlinked to a file in version control (for
managing your dotfiles all in one place, for instance) Spacemacs will ask if
you want to edit that file instead, but the prompt sometimes get hidden. Hit
"y" if it's hanging.

**Update** from [Swaroop](https://twitter.com/swaroopch): `(setq
vc-follow-symlinks t)` is one way to avoid the &lsquo;y/n&rsquo; prompt if you
are using version control.

{{< githubCredit BrianHicks >}}
