#!/bin/fish

for directory in data/maps/*
    set inc_file "$directory/scripts.inc"
    set pory_file "$directory/scripts.pory"
    if not test -e $pory_file
        if test -e $inc_file
            echo "Converting $inc_file"
            begin
                echo 'raw `'
                cat $inc_file
                echo '`'
            end > $pory_file
        echo "Deleting $inc_file"
        rm $inc_file
        end
    end
end
