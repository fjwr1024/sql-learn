-- IN + NULL
SELECT * FROM customers WHERE name IS NULL;
SELECT * FROM customers WHERE name IN ("河野 文典", "稲田 季雄") OR name IS NULL;


-- NOT IN

SELECT * FROM customers WHERE name NOT IN ("河野 文典", "稲田 季雄", NULL);

SELECT * FROM customers WHERE name NOT IN ("河野 文典", "稲田 季雄") AND name IS NOT NULL;


-- NOT IN → name != "河野 文典" name != "稲田 季雄" name != NULL

-- ALL
SELECT * FROM users WHERE birth_day <= ALL(SELECT birth_day FROM customers WHERE id < 10 AND birth_day IS NOT NULL)