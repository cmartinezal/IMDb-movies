WITH
    KB AS (
        SELECT
            S.MOVIE_ID,
            P.ID
        FROM
            STARS S
            JOIN PEOPLE P ON S.PERSON_ID = P.ID
        WHERE
            P.NAME = 'Kevin Bacon'
            AND P.BIRTH = 1958
    )
SELECT DISTINCT
    P.NAME
FROM
    MOVIES M
    JOIN KB ON M.ID = KB.MOVIE_ID
    JOIN STARS S ON M.ID = S.MOVIE_ID
    JOIN PEOPLE P ON S.PERSON_ID = P.ID
WHERE
    P.ID != KB.ID
ORDER BY 1
;
