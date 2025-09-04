function lcommit
    set diff (git diff --cached)
    if test -z "$diff"
        echo "No staged changes found."
        return 1
    end
    echo $diff | llm --system "Write a concise, conventional commit-style message describing these changes."
end
