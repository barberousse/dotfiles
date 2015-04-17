function glg
        function maybe
                set n $argv[1]
                if test 
                        echo "-- $argv[1]"
                end
        end
 
        git log --oneline --decorate --graph (maybe $argv)
end
