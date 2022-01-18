CREATE TABLE 'Mood' (
    'id' INTEGER PRIMARY KEY AUTOINCREMENT,
    'label' TEXT NOT NULL
);

CREATE TABLE `JournalEntries` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`concept`	TEXT NOT NULL,
	`entry`	TEXT NOT NULL,
    'date' DATE NOT NULL,
    'mood_id' TEXT NOT NULL,
 FOREIGN KEY(`mood_id`) REFERENCES `Mood`(`id`)
);

CREATE TABLE 'Tags'(
    'id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'subject' TEXT NOT NULL
);
CREATE TABLE 'EntryTags'(
    'id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    'journalEntries_id' INTEGER NOT NULL,
    'tags_id' INTEGER NOT NULL,
    FOREIGN KEY(`journalEntries_id`) REFERENCES `JournalEntries`(`id`),
    FOREIGN KEY(`tags_id`) REFERENCES `Tags`(`id`)
);

INSERT INTO `Mood` VALUES (null,"happy");
INSERT INTO `Mood` VALUES (null,"sad");
INSERT INTO `Mood` VALUES (null,"angry");
INSERT INTO `Mood` VALUES (null,"bored");
INSERT INTO `Mood` VALUES (null,"ok");

INSERT INTO `Tags` VALUES (null,"React");
INSERT INTO `Tags` VALUES (null,"javaScript");
INSERT INTO `Tags` VALUES (null,"SQL");
INSERT INTO `Tags` VALUES (null,"Python");

INSERT INTO `JournalEntries` VALUES (null,"React","Today we learned about React Hooks and Fetch calls","1596856617100",1);
INSERT INTO `JournalEntries` VALUES (null,"javaScript","Today We learned how to construct an object and access keys using dot notation and square bracket notation","1598275209215",3);
INSERT INTO `JournalEntries` VALUES (null,"javaScript","Today we learned how to target a DOM element as the destination of all custom events in the system. Also learned how to pass state as details of the event.","1597546756466",4);
INSERT INTO `JournalEntries` VALUES (null,"API","Today we learned how to use the JavaScript fetch command to POST information to our API","1597256847966",2);

INSERT INTO `EntryTags` VALUES (null,1,1);
INSERT INTO `EntryTags` VALUES (null,2,2);
INSERT INTO `EntryTags` VALUES (null,3,2);