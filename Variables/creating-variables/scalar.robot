*** Variables ***
${NAME}         Robot Framework
${VERSION}      2.0
${ROBOT}        ${NAME} ${VERSION}

#with = sign
${NAME2} =       Robot Framework
${VERSION2} =    2.0

#too long
${EXAMPLE}      This value is joined
...             together with a space.
${MULTILINE}    SEPARATOR=\n
...             First line.
...             Second line.
...             Third line.