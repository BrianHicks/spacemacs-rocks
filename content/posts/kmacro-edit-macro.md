+++
date = "2015-08-27T10:00:00-05:00"
description = "Edit macros with `kmacro-edit-macro`"
title = "Edit a macro"
aliases = ["/post/127716085763/edit-a-macro"]
+++
So you've recorded a macro and made a mistake? It's OK, happens to everyone.
Just use `kmacro-edit-macro` to edit it (not bound in a Spacemacsy way by
default, use `SPC :` to search for it). Edit the macro that you're interested in
and it `C-c C-c` (control-c twice) to commit your changes.

{{< gfycat RawImpishAidi >}}

**[Update](https://github.com/BrianHicks/spacemacs-rocks/issues/18) from
[geo7](https://github.com/geo7)**: If one creates a macro using `q<char>` (as in
Vim) then edits using the tip explained here, it will then have to be called
using the standard emacs method of `f4`.

{{< twitterCredit deech >}}
