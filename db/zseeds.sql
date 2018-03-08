INSERT INTO parents (name) VALUES ('Abby');
INSERT INTO parents (name) VALUES ('Bob');
INSERT INTO parents (name) VALUES ('Connie');
INSERT INTO parents (name) VALUES ('Derek');

INSERT INTO children (name, artStageFK, languageStageFK, mathStageFK, movementStageFK, musicStageFK, scienceStageFK, socialStageFK, parentFK, dob) VALUES ('Ethan',    1, 2, 2, 1, 2, 3, 3, 1, '2015-01-15');
INSERT INTO children (name, artStageFK, languageStageFK, mathStageFK, movementStageFK, musicStageFK, scienceStageFK, socialStageFK, parentFK, dob) VALUES ('Francine', 2, 1, 1, 3, 3, 3, 2, 2, '2015-02-15');
INSERT INTO children (name, artStageFK, languageStageFK, mathStageFK, movementStageFK, musicStageFK, scienceStageFK, socialStageFK, parentFK, dob) VALUES ('George',   3, 3, 3, 2, 2, 3, 1, 4, '2015-03-15');
INSERT INTO children (name, artStageFK, languageStageFK, mathStageFK, movementStageFK, musicStageFK, scienceStageFK, socialStageFK, parentFK, dob) VALUES ('Harriet',  1, 3, 2, 1, 1, 2, 3, 1, '2015-04-15');
INSERT INTO children (name, artStageFK, languageStageFK, mathStageFK, movementStageFK, musicStageFK, scienceStageFK, socialStageFK, parentFK, dob) VALUES ('Innigo',   2, 3, 1, 2, 2, 1, 2, 2, '2015-05-15');
INSERT INTO children (name, artStageFK, languageStageFK, mathStageFK, movementStageFK, musicStageFK, scienceStageFK, socialStageFK, parentFK, dob) VALUES ('Julie',    3, 3, 3, 3, 3, 1, 1, 4, '2015-06-15');
INSERT INTO children (name, artStageFK, languageStageFK, mathStageFK, movementStageFK, musicStageFK, scienceStageFK, socialStageFK, parentFK, dob) VALUES ('Kyle',     2, 2, 3, 3, 2, 1, 2, 1, '2015-07-15');
INSERT INTO children (name, artStageFK, languageStageFK, mathStageFK, movementStageFK, musicStageFK, scienceStageFK, socialStageFK, parentFK, dob) VALUES ('Lauren',   1, 2, 3, 2, 2, 3, 2, 2, '2015-08-15');
INSERT INTO children (name, artStageFK, languageStageFK, mathStageFK, movementStageFK, musicStageFK, scienceStageFK, socialStageFK, parentFK, dob) VALUES ('Mike',     2, 1, 1, 1, 1, 2, 2, 4, '2015-09-15');


INSERT INTO savedPlans (savedDate, childFK, themeFK, artActivityFK, languageActivityFK, mathActivityFK, movementActivityFK, musicActivityFK, scienceActivityFK, socialActivityFK)
VALUES ('2017-07-15', 1, 1, 1, 2, 3, 4, 5, 4, 3);
INSERT INTO savedPlans (savedDate, childFK, themeFK, artActivityFK, languageActivityFK, mathActivityFK, movementActivityFK, musicActivityFK, scienceActivityFK, socialActivityFK)
VALUES ('2017-07-15', 4, 1, 1, 2, 3, 4, 5, 4, 3);
INSERT INTO savedPlans (savedDate, childFK, themeFK, artActivityFK, languageActivityFK, mathActivityFK, movementActivityFK, musicActivityFK, scienceActivityFK, socialActivityFK)
VALUES ('2017-07-15', 7, 1, 1, 2, 3, 4, 5, 4, 3);
INSERT INTO savedPlans (savedDate, childFK, themeFK, artActivityFK, languageActivityFK, mathActivityFK, movementActivityFK, musicActivityFK, scienceActivityFK, socialActivityFK)
VALUES ('2016-03-02', 3, 3, 1, 5, 4, 3, 3, 4, 5);
INSERT INTO savedPlans (savedDate, childFK, themeFK, artActivityFK, languageActivityFK, mathActivityFK, movementActivityFK, musicActivityFK, scienceActivityFK, socialActivityFK)
VALUES ('2016-03-02', 6, 3, 1, 4, 3, 2, 3, 2, 2);
INSERT INTO savedPlans (savedDate, childFK, themeFK, artActivityFK, languageActivityFK, mathActivityFK, movementActivityFK, musicActivityFK, scienceActivityFK, socialActivityFK)
VALUES ('2015-01-23', 1, 5, 1, 2, 3, 4, 5, 5, 3);
INSERT INTO savedPlans (savedDate, childFK, themeFK, artActivityFK, languageActivityFK, mathActivityFK, movementActivityFK, musicActivityFK, scienceActivityFK, socialActivityFK)
VALUES ('2015-01-16', 2, 1, 1, 3, 3, 4, 5, 4, 3);

INSERT INTO themes (theme, description) VALUES ('Animals', 'A look at animals on land and in the sea.');
INSERT INTO themes (theme, description) VALUES ('Colors', 'What are the colors of the rainbow?');
INSERT INTO themes (theme, description) VALUES ('Family', 'What makes up a family and who is in yours?');
INSERT INTO themes (theme, description) VALUES ('Holidays', 'Holidays are times to have fun.');
INSERT INTO themes (theme, description) VALUES ('Weather', 'Weather can be very different.');


INSERT INTO artStages (stage, description) VALUES ();
INSERT INTO languageStages (stage, description) VALUES ();
INSERT INTO mathStages (stage, description) VALUES ();
INSERT INTO movementStages (stage, description) VALUES ();
INSERT INTO musicStages (stage, description) VALUES ();
INSERT INTO scienceStages (stage, description) VALUES ();
INSERT INTO socialStages (stage, description) VALUES ();

INSERT INTO artActivities (name, description) VALUES ('Food Art Activity', 'You make an art meal together');
INSERT INTO languageActivities (name, description) VALUES ('Food Language Activity', 'You make a language meal together');
INSERT INTO mathActivities (name, description) VALUES ('Food Math Activity', 'You make a math meal together');
INSERT INTO movementActivities (name, description) VALUES ('Food Movement Activity', 'You make a movement meal together');
INSERT INTO musicActivities (name, description) VALUES ('Food Music Activity', 'You make a music meal together');
INSERT INTO scienceActivities (name, description) VALUES ('Food Science', 'You make a science meal together');
INSERT INTO socialActivities (name, description) VALUES ('Social Food', 'You make a social meal together');

INSERT INTO artActivities (name, description) VALUES ('Art Play Activity', 'You just start art playing around');
INSERT INTO languageActivities (name, description) VALUES ('Language Play Activity', 'You just start language playing around');
INSERT INTO mathActivities (name, description) VALUES ('Math Play Activity', 'You just start math playing around');
INSERT INTO movementActivities (name, description) VALUES ('Movement Play Activity', 'You just start movement playing around');
INSERT INTO musicActivities (name, description) VALUES ('Music Play Activity', 'You just start music playing around');
INSERT INTO scienceActivities (name, description) VALUES ('Science Play Activity', 'You just start science playing around');
INSERT INTO socialActivities (name, description) VALUES ('Social Play Activity', 'You just start social playing around');

INSERT INTO artActivities (name, description) VALUES ('Art Read Activity', 'Read an art book together');
INSERT INTO languageActivities (name, description) VALUES ('Language Read Activity', 'Read a language book together');
INSERT INTO mathActivities (name, description) VALUES ('Math Read Activity', 'Read a math book together');
INSERT INTO movementActivities (name, description) VALUES ('Movement Read Activity', 'Read a movement book together');
INSERT INTO musicActivities (name, description) VALUES ('Music Read Activity', 'Read a music book  together');
INSERT INTO scienceActivities (name, description) VALUES ('Science Read Activity', 'Read a science book together');
INSERT INTO socialActivities (name, description) VALUES ('Social Read Activity', 'Read a social book together');

INSERT INTO artActivities (name, description) VALUES ('Art Talk Activity', 'Talk about art things together');
INSERT INTO languageActivities (name, description) VALUES ('Language Talk Activity', 'Talk about language things together');
INSERT INTO mathActivities (name, description) VALUES ('Math Talk Activity', 'Talk about math things together');
INSERT INTO movementActivities (name, description) VALUES ('Movement Talk Activity', 'Talk about movement things together');
INSERT INTO musicActivities (name, description) VALUES ('Music Talk', 'Talk about music things together');
INSERT INTO scienceActivities (name, description) VALUES ('Science Talk', 'Talk about science things together');
INSERT INTO socialActivities (name, description) VALUES ('Social Talk', 'Talk about social things together');

INSERT INTO artActivities (name, description) VALUES ('Art Trip Activity', 'Take an art trip together');
INSERT INTO languageActivities (name, description) VALUES ('Language Trip Activity', 'Take a language trip together');
INSERT INTO mathActivities (name, description) VALUES ('Math Trip Activity', 'Take a math trip together');
INSERT INTO movementActivities (name, description) VALUES ('Movement Trip Activity', 'Take a movement trip together');
INSERT INTO musicActivities (name, description) VALUES ('Music Trip Activity', 'Take a music trip together');
INSERT INTO scienceActivities (name, description) VALUES ('Science Trip Activity', 'Take a science trip together');
INSERT INTO socialActivities (name, description) VALUES ('Social Trip Activity', 'Take a social trip together');

INSERT INTO artComments (comment, activityFK, parentFK) VALUES ("This was so much fun!", 1, 1);
INSERT INTO artComments (comment, activityFK, parentFK) VALUES ("Bring a towel...", 1, 4);
INSERT INTO languageComments (comment, activityFK, parentFK) VALUES ("Hard to do.", 3, 2);
INSERT INTO scienceComments (comment, activityFK, parentFK) VALUES ("Would do again.", 5, 1);

INSERT INTO artStageJoin 
INSERT INTO languageStageJoin
INSERT INTO mathStageJoin
INSERT INTO movementStageJoin
INSERT INTO musicStageJoin
INSERT INTO scienceStageJoin
INSERT INTO socialStageJoin

INSERT INTO artThemeJoin
INSERT INTO languageThemeJoin
INSERT INTO mathThemeJoin
INSERT INTO movementThemeJoin
INSERT INTO musicThemeJoin
INSERT INTO scienceThemeJoin
INSERT INTO socialThemeJoin
