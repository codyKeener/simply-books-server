-- CREATE TABLES IN DATABASE

CREATE TABLE `Author` (
  `id`  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `email`	TEXT NOT NULL,
  `first_name`	TEXT NOT NULL,
  `last_name`	TEXT NOT NULL,
  `image`	TEXT NOT NULL,
  `favorite` BOOLEAN NOT NULL
);

CREATE TABLE `Book` (
  `id`  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `title`	TEXT NOT NULL,
  `image`	TEXT NOT NULL,
  `price`	TEXT NOT NULL,
  `sale`	BOOLEAN NOT NULL,
  `description` TEXT NOT NULL
);

-- TABLE NOT CREATED YET
CREATE TABLE `Author_Book` (
  `id`  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `author_id`  INTEGER NOT NULL,
  FOREIGN KEY(`author_id`) REFERENCES `Author`(`id`),
  `book_id`  INTEGER NOT NULL,
  FOREIGN KEY(`book_id`) REFERENCES `Book`(`id`)
);

-- INSERT TEST DATA INTO TABLES

INSERT INTO `Author` VALUES (null, "codymkeener@gmail.com", "Cody", "Keener", "https://media.licdn.com/dms/image/v2/C4E03AQHZwVKLtVRU0Q/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1543934392936?e=1735776000&v=beta&t=8mZ3UrESLopS6xTz9lpMJcehk5ULWxh2M3Vy84pIWpw", TRUE);

INSERT INTO `Book` VALUES (null, "Somehow I Manage", "https://www.reddit.com/media?url=https%3A%2F%2Fpreview.redd.it%2Fwe-all-know-michaels-book-somehow-i-manage-wouldve-been-a-v0-582whhdhqbeb1.jpg%3Fwidth%3D640%26crop%3Dsmart%26auto%3Dwebp%26s%3D74b7524e9af7dbde90b8307288e14b8d303ed83c", "20", FALSE, "Learn how I manage and how you can, too");

SELECT * FROM Author
