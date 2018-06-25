#!/usr/bin/env bash
if [[ $* == *interactive* ]]
then
    echo 'interactive'
    docker run -ti -v $(pwd):/workdir tmaier/markdown-spellcheck:latest "**/*.md"
else
    docker run -ti -v $(pwd):/workdir tmaier/markdown-spellcheck:latest --report "**/*.md"
fi
