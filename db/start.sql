BEGIN TRANSACTION;
CREATE TABLE pages (
        id INTEGER,
        slug VARCHAR(255) NOT NULL,
        position INTEGER,
        title VARCHAR(255),
        contents TEXT,
        updated TIMESTAMP
			DEFAULT (strftime('%s',CURRENT_TIMESTAMP,'localtime')),
        commentable INTEGER, deleted INTEGER DEFAULT 0, available INTEGER DEFAULT 0,
        PRIMARY KEY(id)
);
INSERT INTO "pages" VALUES(3, 'control-basis-dag-1', 3, 'Control Basis (dag 1)', '<p>De opleidingen in Niko Home Control, Nikobus en Niko Toegangscontrole bieden je de mogelijkheid om je kennis uit te breiden. Ze zijn praktisch, geconcentreerd op 1 dag en worden gegeven in kleine groepen. Zo leer je op een korte tijd bijzonder veel.</p>

<ol>
	<li>bla</li>
	<li>miauw</li>
	<li>piep</li>
</ol>

<p>Je maakt grondig kennis met het product en aan het eind van de dag weet je hoe het te installeren &eacute;n te verkopen. Tijdens de cursus kun je vragen stellen en wordt elke cursist persoonlijk begeleid. Na de opleiding ontvang je een certificaat. -</p>
', 1417388400, NULL, 1, 1);
INSERT INTO "pages" VALUES(4, 'flexeria-pimpen', 2, 'Flexeria pimpen', '<p>De opleidingen in Niko Home Control, Nikobus en Niko Toegangscontrole bieden je de mogelijkheid om je kennis uit te breiden. Ze zijn <strong>praktisch</strong>, geconcentreerd op 1 dag en worden gegeven in kleine groepen. Zo leer je op een korte tijd bijzonder veel.</p>

<p>Je maakt grondig<s> kennis met het product en aan het ei</s>nd van de dag weet je hoe het te installeren &eacute;n te verkopen. Tijdens de cursus kun je vragen stellen en wordt elke cursist persoonlijk begeleid. Na de opleiding ontvang je een certificaat. -</p>
', 1431122400, 1, 1, 0);
INSERT INTO "pages" VALUES(5, 'cylinderslot-verwisselen', 1, 'Cylinderslot verwisselen', '<p>Als je ziet wat hier allemaal staat om de installateurs te ondersteunen en hoe je hier op een professionele manier wordt opgevangen, dan kan ik alleen maar zeggen... knap werk!</p>
', 1426460400, NULL, 0, 1);
INSERT INTO "pages" VALUES(6, 'flexeria-dag-2', 5, 'flexeria dag 2', '<p>afasdf afasdf</p>
', 1426533480, NULL, 1, 0);
INSERT INTO "pages" VALUES(7, 'veiligheid', 4, 'Veiligheid', '<p>is belangrijk</p>
', 1426533480, NULL, 0, 0);
CREATE TABLE comments (
        slug VARCHAR(255) NOT NULL,
        posted TIMESTAMP
			DEFAULT (strftime('%s',CURRENT_TIMESTAMP,'localtime')),
        name VARCHAR(255),
        email VARCHAR(255),
        identicon TEXT,
        contents TEXT,
        PRIMARY KEY(slug,posted)
);
CREATE TABLE sessions (session_id VARCHAR(40),data TEXT,ip VARCHAR(40),agent VARCHAR(255),stamp INTEGER,PRIMARY KEY(session_id));
INSERT INTO "sessions" VALUES('nt2m2544ilv9467hnaij1nkde4', 'user_id|s:3:"wim";crypt|s:9:"n1ghtfall";lastseen|i:1426669725;', '83.163.21.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2336.0 Safari/537.36', 1426669725);
COMMIT;
