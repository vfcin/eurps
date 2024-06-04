#!/usr/bin/env bash

for file in Media/* ; do
    if [[ "${file}" =~ Media/([A-Z]([a-z]+|\-Ray))\.(jpg|png|gif) ]] ; then
        name="${BASH_REMATCH[1]}"
        {
            echo "# ${name}"
            echo
            echo "![${name}](../${BASH_REMATCH[0]})"
        } > "Eurps/${name}.md"
    fi
done