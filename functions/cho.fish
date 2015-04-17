function cho
        if test (count $argv) -ge 1
                git checkout $argv
        else
                git checkout
        end
end
