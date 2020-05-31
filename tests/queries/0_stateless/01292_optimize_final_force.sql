DROP TABLE IF EXISTS mt;
CREATE TABLE mt (x UInt8, k UInt8 DEFAULT 0) ENGINE = SummingMergeTree ORDER BY k;

INSERT INTO mt (x) VALUES (1);
INSERT INTO mt (x) VALUES (2);
INSERT INTO mt (x) VALUES (3);
INSERT INTO mt (x) VALUES (4);
INSERT INTO mt (x) VALUES (5);
INSERT INTO mt (x) VALUES (6);
INSERT INTO mt (x) VALUES (7);
INSERT INTO mt (x) VALUES (8);
INSERT INTO mt (x) VALUES (9);
INSERT INTO mt (x) VALUES (10);

OPTIMIZE TABLE mt FINAL;
SELECT * FROM mt;

DROP TABLE mt;