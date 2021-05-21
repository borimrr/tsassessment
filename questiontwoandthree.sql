/*
 * QUESTION 2
 * Assuming we only want users with clients (inner join)
 */
SELECT
    u.name AS "user's name",
    u.id AS "user's id",
    c.name AS "user's client name"
FROM
    users u
INNER JOIN
    clients c
ON
    u.client_id = c.id;

/*
 * QUESTION 3
 */
SELECT
    COUNT(u.id) AS "number of users",
    client_name AS "client name"
FROM (
    SELECT
        u.name,
        u.id,
        c.name AS client_name
    FROM
        users u
    INNER JOIN
        clients c
    ON
        u.client_id = c.id
 )
GROUP BY
    client_name;
