DELETE FROM inhabitant;
ALTER TABLE inhabitant AUTO_INCREMENT = 1;

INSERT INTO inhabitant (name, villageid, gender, job, gold, state) VALUES
  ('Paul Bakerman', 1, 'm', 'baker', 850, 'friendly'),
  ('Ernest Perry', 3, 'm', 'weaponsmith', 280, 'friendly'),
  ('Rita Ox', 1, 'f', 'baker', 350, 'friendly'),
  ('Carl Ox', 1, 'm', 'merchant', 250, 'friendly'),
  ('Dirty Dieter', 3, 'm', 'smith', 650, 'evil'),
  ('Gerry Slaughterer', 2, 'm', 'butcher', 4850, 'evil'),
  ('Peter Slaughterer', 3, 'm', 'butcher', 3250, 'evil'),
  ('Arthur Tailor', 2, 'm', 'pilot', 490, 'kidnapped'),
  ('Tiffany Drummer', 1, 'f', 'baker', 550, 'evil'),
  ('Peter Drummer', 1, 'm', 'smith', 600, 'friendly'),
  ('Dirty Diane', 3, 'f', 'farmer', 10, 'evil'),
  ('Otto Alexander', 2, 'm', 'dealer', 680, 'friendly'),
  ('Fred Dix', 3, 'm', 'author', 420, 'friendly'),
  ('Enrico Carpenter', 3, 'm', 'weaponsmith', 510, 'evil'),
  ('Helen Grasshead', 2, 'f', 'dealer', 680, 'friendly'),
  ('Ivy Hatter', 1, 'f', 'dealer', 770, 'evil'),
  ('Edward Grasshead', 3, 'm', 'butcher', 990, 'friendly'),
  ('Ryan Horse', 3, 'm', 'blacksmith', 390, 'friendly'),
  ('Ann Meaty', 2, 'f', 'butcher', 2280, 'friendly')
;

DELETE FROM item;

INSERT INTO item (item, owner) VALUES
  ('bucket', NULL),
  ('carton', NULL),
  ('coffee cup', NULL),
  ('lightbulb', NULL),
  ('ring', NULL),
  ('teapot', NULL),
  ('hammer', 2),
  ('cane', 5),
  ('rope', 17)
;

DELETE FROM village;

INSERT INTO village (name, chief) VALUES
  ('Monkeycity', 1),
  ('Cucumbertown', 6),
  ('Onionville', 13)
;
