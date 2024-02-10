WITH
    BC_M AS (
        SELECT
            S.MOVIE_ID
        FROM
            STARS S
            JOIN PEOPLE P ON S.PERSON_ID = P.ID
        WHERE
            P.NAME = 'Bradley Cooper'
    ),
    JL_M AS (
        SELECT
            S.MOVIE_ID
        FROM
            STARS S
            JOIN PEOPLE P ON S.PERSON_ID = P.ID
        WHERE
            P.NAME = 'Jennifer Lawrence'
    )
SELECT DISTINCT
    M.TITLE
FROM
    MOVIES M
    JOIN BC_M ON M.ID = BC_M.MOVIE_ID
    JOIN JL_M ON M.ID = JL_M.MOVIE_ID;
