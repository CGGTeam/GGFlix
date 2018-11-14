CREATE TABLE sys.fulltext_stopwords
(
    stoplist_id int NOT NULL,
    stopword nvarchar(64) NOT NULL,
    language nvarchar(128),
    language_id int NOT NULL
);