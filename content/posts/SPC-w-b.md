---
date: "2015-10-20T00:00:00-05:00"
publishdate: "2015-10-20T00:00:00-05:00"
description: "Fix an unfocused helm session with `SPC w b`"
title: "Refocus Helm"

---

Sometimes when Helm loses focus, it breaks a little bit (try clicking outside
the helm buffer to see what I mean.) If this happens, you've got two options:

1. start another helm session (which will kill the existing buffer)
2. use `switch-to-minibuffer-window` (`SPC w b`) to refocus your session

{{< gfycat GregariousPleasingLadybird >}}

{{< githubCredit d12frosted >}}
