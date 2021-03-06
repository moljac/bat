#!/bin/bash

DIR_CURRENT=$(pwd)

echo $DIR_CURRENT

DIRS=$(ls)
DIRS=$(find $DIR_CURRENT -type d)

for DIR in $DIRS;
do
    if [ -d "$DIR/.git/" ]; 
    then
        echo git repo true = $DIR
        #-----------------------------------------------
        # pushd $DIR
        # popd
        #-----------------------------------------------
        ( \
            cd $DIR \
            && \
            git pull --recurse-submodules \
            && \
            git submodule update \
            && \
            git submodule foreach git checkout master \
            && \
            git submodule foreach git pull origin master \
            && \
            cd - \
        )
    fi
done

