USE sporkify_db;

SELECT artist FROM sporkify WHERE song = 'Ntag';

SELECT song FROM sporkify ORDER BY duration DESC LIMIT 3;

SELECT COUNT(*) FROM sporkify;

SELECT artist, count(*) FROM sporkify
GROUP BY artist
ORDER BY count(artist) DESC LIMIT 1;

