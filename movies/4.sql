SELECT
    COUNT(M.ID)
FROM
    MOVIES M
    JOIN RATINGS R ON M.ID = R.MOVIE_ID
WHERE
    R.RATING = 10.0;
