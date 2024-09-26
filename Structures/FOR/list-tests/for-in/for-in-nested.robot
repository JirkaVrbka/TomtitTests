*** Test Cases ***
Multiple nesting levels
    FOR    ${root}    IN    r1    r2
        FOR    ${child}    IN    c1   c2    c3
            FOR    ${grandchild}    IN    g1    g2
                Log Many    ${root}    ${child}    ${grandchild}
            END
        END
        FOR    ${sibling}    IN    s1    s2    s3
            Log Many    ${root}    ${sibling}
        END
    END

Two Nested levels With List Of Lists
    @{table}=    Create List    [['a', 'b', 'c'], ['d', 'e', 'f'], ['g', 'h', 'i']]
    FOR    ${row}    IN    @{table}
        FOR    ${cell}    IN    @{row}
            Log    ${cell}
        END
    END