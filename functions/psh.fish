function psh
        git stash save --quiet --include-untracked
        git push $argv
        git stash pop --quiet
end
