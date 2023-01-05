USE my_db;

SELECT DATABASE();

# テーブル作成 
CREATE TABLE users(
    id INT,
    name VARCHAR(10),
    age INT,
    phone_number CHAR(13),
    message TEXT
)

# テーブル一覧表示
SHOW TABLES;


# テーブルの定義確認
DESCRIBE users;

# テーブルの削除
DROP TABLE users;

SHOW TABLES;

# テーブル作成 (主キー付き)
CREATE TABLE users(
    id INT PRIMARY KEY,
    name VARCHAR(10),
    age INT,
    phone_number CHAR(13),
    message TEXT
)

# テーブルの定義確認
DESCRIBE users;