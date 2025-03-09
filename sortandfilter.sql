CREATE TABLE News(
STATION TEXT,
TOP_STORY TEXT,
TIME INT
);

INSERT INTO News(STATION, TOP_STORY, TIME) VALUES
('hacker_news', '$50 million of data breached in microsoft database', 15),
('hacker_news', 'top 5 tips on how to pass a firewall', 12),
('software_news', 'new startup company in china develops biometrics forger: how dangerous is it?', 20),
('software_news', 'what is the future of white-box penetration testing?', 25);

SELECT TOP_STORY, TIME FROM News
ORDER BY TIME ASC;
SELECT STATION, AVG(TIME) FROM News
GROUP BY STATION;
