#!/usr/bin/env fish

for abbreviation in (abbr -l)
    abbr -e $abbreviation
end
abbr g git
abbr gf git fetch
abbr gs git status
abbr gc git commit -m
abbr gm git merge FETCH_HEAD --ff-only
abbr gr git rb FETCH_HEAD
abbr ga git add
abbr gp git push
abbr gd git diff
abbr gco git checkout
abbr bs brew services
