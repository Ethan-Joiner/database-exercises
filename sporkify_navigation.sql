USE sporkify_db;

SELECT artist FROM sporkify WHERE song = 'Ntag';

SELECT song FROM sporkify ORDER BY duration DESC LIMIT 3;

SELECT id FROM sporkify ORDER BY id DESC LIMIT 1;

SELECT artist, count(*) FROM sporkify
GROUP BY artist
ORDER BY count(artist) DESC LIMIT 1;

