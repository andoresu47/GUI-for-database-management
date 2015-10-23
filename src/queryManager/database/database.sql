-- SQL for Books, Authors and Publishers tables

BEGIN TRANSACTION;

DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Authors;
DROP TABLE IF EXISTS Publishers;
DROP TABLE IF EXISTS Subjects;

DROP TABLE IF EXISTS WrittenBy;
DROP TABLE IF EXISTS PublishedBy_On;
DROP TABLE IF EXISTS BelongsToSubject;


-- Authors table, consisting of 50 different book authors.
-- The table consists only of a unique identifier and text fields.

CREATE TABLE IF NOT EXISTS Authors(
	AuthorId INTEGER PRIMARY KEY,
	Author TEXT NOT NULL
);
INSERT INTO Authors VALUES(1, 'J. R. R. Tolkien');
INSERT INTO Authors VALUES(2, 'Isaac Asimov');
INSERT INTO Authors VALUES(3, 'Michael Crichton');
INSERT INTO Authors VALUES(4, 'Adolf Hitler');
INSERT INTO Authors VALUES(5, 'C. S. Lewis');
INSERT INTO Authors VALUES(6, 'J. K. Rowling');
INSERT INTO Authors VALUES(7, 'George R. R. Martin');
INSERT INTO Authors VALUES(8, 'Stephen King');
INSERT INTO Authors VALUES(9, 'Friedrich Nietzsche');
INSERT INTO Authors VALUES(10, 'Soren Kierkegaard');
INSERT INTO Authors VALUES(11, 'Immanuel Kant');
INSERT INTO Authors VALUES(12, 'Karl Popper');
INSERT INTO Authors VALUES(13, 'Michel Foucault');
INSERT INTO Authors VALUES(14, 'Milan Kundera');
INSERT INTO Authors VALUES(15, 'Gabriel Garcia Marquez');
INSERT INTO Authors VALUES(16, 'Jorge Luis Borges');
INSERT INTO Authors VALUES(17, 'Isabel Allende');
INSERT INTO Authors VALUES(18, 'Mario Vargas Llosa');
INSERT INTO Authors VALUES(19, 'Juan Rulfo');
INSERT INTO Authors VALUES(20, 'Julio Cortazar');
INSERT INTO Authors VALUES(21, 'Octavio Paz');
INSERT INTO Authors VALUES(22, 'Carlos Fuentes');
INSERT INTO Authors VALUES(23, 'Horacio Quiroga');
INSERT INTO Authors VALUES(24, 'Mario Benedetti');
INSERT INTO Authors VALUES(25, 'Ernesto R. Sabato');
INSERT INTO Authors VALUES(26, 'Alejo Carpentier');
INSERT INTO Authors VALUES(27, 'Eduardo Galeano');
INSERT INTO Authors VALUES(28, 'Plinio Apuleyo Mendoza');
INSERT INTO Authors VALUES(29, 'Hermann Hesse');
INSERT INTO Authors VALUES(30, 'Federico Garcia Lorca');
INSERT INTO Authors VALUES(31, 'Pablo Neruda');
INSERT INTO Authors VALUES(32, 'Miguel De Cervantes Saavedra');
INSERT INTO Authors VALUES(33, 'Marcelo Figueras');
INSERT INTO Authors VALUES(34, 'Franz Kafka');
INSERT INTO Authors VALUES(35, 'Kanae Minato');
INSERT INTO Authors VALUES(36, 'Oscar Wilde');
INSERT INTO Authors VALUES(37, 'Haruki Murakami');
INSERT INTO Authors VALUES(38, 'Jane Austen');
INSERT INTO Authors VALUES(39, 'William Shakespeare');
INSERT INTO Authors VALUES(40, 'Homer');
INSERT INTO Authors VALUES(41, 'Virgil');
INSERT INTO Authors VALUES(42, 'Dan Brown');
INSERT INTO Authors VALUES(43, 'Stieg Larsson');
INSERT INTO Authors VALUES(44, 'Bernard F. Schutz');
INSERT INTO Authors VALUES(45, 'Leonard Susskind');
INSERT INTO Authors VALUES(46, 'Stephen Hawking');
INSERT INTO Authors VALUES(47, 'Carl Sagan');
INSERT INTO Authors VALUES(48, 'Richard Dawkins');
INSERT INTO Authors VALUES(49, 'Richard P. Feynman');
INSERT INTO Authors VALUES(50, 'Albert Einstein');


-- Books table, consisting of 105 different books. All written by an
-- author from the Authors table.
-- The table consists only of a unique identifier and text fields.

CREATE TABLE IF NOT EXISTS Books(
	BookId INTEGER PRIMARY KEY,
	Title TEXT NOT NULL
);
INSERT INTO Books VALUES(1, 'The Hobbit');
INSERT INTO Books VALUES(2, 'The Fellowship of the Ring');
INSERT INTO Books VALUES(3, 'The Two Towers');
INSERT INTO Books VALUES(4, 'The Return of The King');
INSERT INTO Books VALUES(5, 'The Lord of The Rings');
INSERT INTO Books VALUES(6, 'The Silmarillion');

INSERT INTO Books VALUES(7, 'I, Robot');
INSERT INTO Books VALUES(8, 'Foundation');
INSERT INTO Books VALUES(9, 'Robot Visions');
INSERT INTO Books VALUES(10, 'Robot Dreams');

INSERT INTO Books VALUES(11, 'Jurassic Park');
INSERT INTO Books VALUES(12, 'The Lost World');

INSERT INTO Books VALUES(13, 'Mein Kampf');

INSERT INTO Books VALUES(14, 'The Abolition of Man');
INSERT INTO Books VALUES(15, 'Out of the Silent Planet');

INSERT INTO Books VALUES(16, 'Harry Potter and the Sorcerers Stone');
INSERT INTO Books VALUES(17, 'Harry Potter And The Chamber Of Secrets');
INSERT INTO Books VALUES(18, 'Harry Potter and the Prisoner of Azkaban');
INSERT INTO Books VALUES(19, 'Harry Potter and the Goblet of Fire');
INSERT INTO Books VALUES(20, 'Harry Potter and the Order of the Phoenix');
INSERT INTO Books VALUES(21, 'Harry Potter and the Half-Blood Prince');
INSERT INTO Books VALUES(22, 'Harry Potter and the Deathly Hallows');

INSERT INTO Books VALUES(23, 'A Game of Thrones');
INSERT INTO Books VALUES(24, 'A Clash of Kings');
INSERT INTO Books VALUES(25, 'A Storm of Swords');
INSERT INTO Books VALUES(26, 'A Feast for Crows');
INSERT INTO Books VALUES(27, 'A Dance with Dragons');

INSERT INTO Books VALUES(28, 'The Shinning');

INSERT INTO Books VALUES(29, 'Beyond Good and Evil');
INSERT INTO Books VALUES(30, 'The Genealogy of Morals');
INSERT INTO Books VALUES(31, 'The Anti-Christ');

INSERT INTO Books VALUES(32, 'The Essential Kierkegaard');

INSERT INTO Books VALUES(33, 'Critique of Pure Reason');

INSERT INTO Books VALUES(34, 'The Logic of Scientific Discovery');
INSERT INTO Books VALUES(35, 'Conjectures and Refutations: The Growth of Scientific Knowledge');

INSERT INTO Books VALUES(36, 'Discipline & Punish: The Birth of the Prison');

INSERT INTO Books VALUES(37, 'The Unbearable Lightness of Being');

INSERT INTO Books VALUES(38, 'One Hundred Years of Solitude');
INSERT INTO Books VALUES(39, 'El Amor en los Tiempos Del Colera');
INSERT INTO Books VALUES(40, 'Cronica de una muerte anunciada');

INSERT INTO Books VALUES(41, 'El Aleph');
INSERT INTO Books VALUES(42, 'Historia Universal de la infamia');

INSERT INTO Books VALUES(43, 'La Casa de los Espiritus');
INSERT INTO Books VALUES(44, 'The Japanese Lover');

INSERT INTO Books VALUES(45, 'La Ciudad y los Perros');
INSERT INTO Books VALUES(46, 'La tia Julia y el escribidor');

INSERT INTO Books VALUES(47, 'Pedro Paramo');
INSERT INTO Books VALUES(48, 'El Llano en llamas');

INSERT INTO Books VALUES(49, 'Cuentos Completos');

INSERT INTO Books VALUES(50, 'El laberinto de la soledad');
INSERT INTO Books VALUES(51, 'The Poems of Octavio Paz');

INSERT INTO Books VALUES(52, 'La Muerte de Artemio Cruz');

INSERT INTO Books VALUES(53, 'Cuentos de Amor de Locura y de Muerte');
INSERT INTO Books VALUES(54, 'Cuentos de la selva');
INSERT INTO Books VALUES(55, 'Jungle Tales');

INSERT INTO Books VALUES(56, 'El amor, las mujeres y la vida');
INSERT INTO Books VALUES(57, 'La tregua');

INSERT INTO Books VALUES(58, 'The tunnel');
INSERT INTO Books VALUES(59, 'Sobre heroes y tumbas');

INSERT INTO Books VALUES(60, 'The Kingdom of This World');
INSERT INTO Books VALUES(61, 'The Lost Steps');

INSERT INTO Books VALUES(62, 'Las Venas Abiertas de America Latina');

INSERT INTO Books VALUES(63, 'Manual del perfecto idiota latinoamericano');

INSERT INTO Books VALUES(64, 'Siddhartha');
INSERT INTO Books VALUES(65, 'Beneath the Wheel');
INSERT INTO Books VALUES(66, 'Steppenwolf');

INSERT INTO Books VALUES(67, 'Bodas de Sangre, Yerma y La Casa de Bernada Alba');

INSERT INTO Books VALUES(68, 'Twenty Love Poems and a Song of Despair');
INSERT INTO Books VALUES(69, 'One Hundred Love Sonnets');

INSERT INTO Books VALUES(70, 'Don Quixote');

INSERT INTO Books VALUES(71, 'Kamchatka');

INSERT INTO Books VALUES(72, 'The Metamorphosis');
INSERT INTO Books VALUES(73, 'The Castle');

INSERT INTO Books VALUES(74, 'Confessions');

INSERT INTO Books VALUES(75, 'The Picture of Dorian Grey');
INSERT INTO Books VALUES(76, 'The Importance of Being Ernest');

INSERT INTO Books VALUES(77, '1Q84');

INSERT INTO Books VALUES(78, 'Pride and Prejudice');

INSERT INTO Books VALUES(79, 'Macbeth');
INSERT INTO Books VALUES(80, 'Romeo and Juliet');
INSERT INTO Books VALUES(81, 'Othello');
INSERT INTO Books VALUES(82, 'The Tempest');

INSERT INTO Books VALUES(83, 'The Odyssey');
INSERT INTO Books VALUES(84, 'The Iliad');

INSERT INTO Books VALUES(85, 'The Aeneid');

INSERT INTO Books VALUES(86, 'The Da Vinci Code');
INSERT INTO Books VALUES(87, 'The Lost Symbol');
INSERT INTO Books VALUES(88, 'Inferno');

INSERT INTO Books VALUES(89, 'The Girl with the Dragon Tattoo');
INSERT INTO Books VALUES(90, 'The Girl Who Played with Fire');
INSERT INTO Books VALUES(91, 'The Girl Who Kicked the Hornets Nest');

INSERT INTO Books VALUES(92, 'A First Course in General Relativity');
INSERT INTO Books VALUES(93, 'Geometrical Methods of Mathematical Physics');

INSERT INTO Books VALUES(94, 'Quantum Mechanics: The Theoretical Minimum');
INSERT INTO Books VALUES(95, 'The Black Hole War');

INSERT INTO Books VALUES(96, 'A Brief History of Time');
INSERT INTO Books VALUES(97, 'The Grand Design');

INSERT INTO Books VALUES(98, 'Cosmos');

INSERT INTO Books VALUES(99, 'The Selfish Gene');
INSERT INTO Books VALUES(100, 'The God Delusion');

INSERT INTO Books VALUES(101, 'Quantum Mechanics and Path Integrals');
INSERT INTO Books VALUES(102, 'QED: The Strange Theory of Light and Matter');

INSERT INTO Books VALUES(103, 'Ideas And Opinions');
INSERT INTO Books VALUES(104, 'Relativity: The Special and General Theory');
INSERT INTO Books VALUES(105, 'The World As I See It');


-- Publishers table, consisting of 50 different book publishers.
-- The table consists only of a unique identifier and text fields.

CREATE TABLE IF NOT EXISTS Publishers(
	PublisherId INTEGER PRIMARY KEY,
	Publisher TEXT NOT NULL
);
INSERT INTO Publishers VALUES(1, 'Random House');
INSERT INTO Publishers VALUES(2, 'Elite Minds');
INSERT INTO Publishers VALUES(3, 'Houghton Mifflin Harcourt');
INSERT INTO Publishers VALUES(4, 'Del Rey');
INSERT INTO Publishers VALUES(5, 'Spectra');
INSERT INTO Publishers VALUES(6, 'Harper');
INSERT INTO Publishers VALUES(7, 'Barnes & Noble Inc');
INSERT INTO Publishers VALUES(8, 'Roc');
INSERT INTO Publishers VALUES(9, 'Ace');
INSERT INTO Publishers VALUES(10, 'Ballantine Books');
INSERT INTO Publishers VALUES(11, 'Knopf');
INSERT INTO Publishers VALUES(12, 'Scribner');
INSERT INTO Publishers VALUES(13, 'Scholastic');
INSERT INTO Publishers VALUES(14, 'Arthur A. Levine Books');
INSERT INTO Publishers VALUES(15, 'Bantam');
INSERT INTO Publishers VALUES(16, 'Anchor');
INSERT INTO Publishers VALUES(17, 'CreateSpace Independent Publishing Platform');
INSERT INTO Publishers VALUES(18, 'Dover Publications');
INSERT INTO Publishers VALUES(19, 'SoHo Books');
INSERT INTO Publishers VALUES(20, 'Princeton University Press');
INSERT INTO Publishers VALUES(21, 'Penguin Books');
INSERT INTO Publishers VALUES(22, 'Hackett Publishing');
INSERT INTO Publishers VALUES(23, 'Routledge');
INSERT INTO Publishers VALUES(24, 'Vintage Books');
INSERT INTO Publishers VALUES(25, 'Perennial Classics');
INSERT INTO Publishers VALUES(26, 'French & European Pubns');
INSERT INTO Publishers VALUES(27, 'Vintage Espanol');
INSERT INTO Publishers VALUES(28, 'Atria Books');
INSERT INTO Publishers VALUES(29, 'Punto de Lectura');
INSERT INTO Publishers VALUES(30, 'Real Academia Española');
INSERT INTO Publishers VALUES(31, 'Alfaguara');
INSERT INTO Publishers VALUES(32, 'Grove Press');
INSERT INTO Publishers VALUES(33, 'Catedra');
INSERT INTO Publishers VALUES(34, 'New Directions');
INSERT INTO Publishers VALUES(35, 'C & A Publications');
INSERT INTO Publishers VALUES(36, 'CreateSpace');
INSERT INTO Publishers VALUES(37, 'Brigham Distributing');
INSERT INTO Publishers VALUES(38, 'Debolsillo');
INSERT INTO Publishers VALUES(39, 'Planeta Publishing');
INSERT INTO Publishers VALUES(40, 'Booket');
INSERT INTO Publishers VALUES(41, 'Farrar');
INSERT INTO Publishers VALUES(42, 'Univ of Minnesota Press');
INSERT INTO Publishers VALUES(43, 'Siglo XXI');
INSERT INTO Publishers VALUES(44, 'Plaza & Janes');
INSERT INTO Publishers VALUES(45, 'Picador');
INSERT INTO Publishers VALUES(46, 'University of Texas Press');
INSERT INTO Publishers VALUES(47, 'Collectors Library');
INSERT INTO Publishers VALUES(48, 'Oxford Paperbacks');
INSERT INTO Publishers VALUES(49, 'Ocho y Medio');
INSERT INTO Publishers VALUES(50, 'Classix Press');
INSERT INTO Publishers VALUES(51, 'Schocken');
INSERT INTO Publishers VALUES(52, 'Mulholland Books');
INSERT INTO Publishers VALUES(53, 'Futabasha');
INSERT INTO Publishers VALUES(54, 'Simon & Brown');
INSERT INTO Publishers VALUES(55, 'Simon & Schuster');
INSERT INTO Publishers VALUES(56, 'SparkNotes');
INSERT INTO Publishers VALUES(57, 'University Of Chicago Press');
INSERT INTO Publishers VALUES(58, 'Cambridge University Press');
INSERT INTO Publishers VALUES(59, 'Basic Books');
INSERT INTO Publishers VALUES(60, 'Back Bay Books');
INSERT INTO Publishers VALUES(61, 'Oxford University Press');
INSERT INTO Publishers VALUES(62, 'Mariner Books');
INSERT INTO Publishers VALUES(63, 'Broadway Books');
INSERT INTO Publishers VALUES(64, 'Emporum Books');
INSERT INTO Publishers VALUES(65, 'BN Publishing');


-- Subjects table, consisting of 50 different subjects a certain book can relate to.
-- The table consists only of a unique identifier and text fields.

CREATE TABLE IF NOT EXISTS Subjects(
	SubjectId INTEGER PRIMARY KEY,
	Subject TEXT NOT NULL
);
INSERT INTO Subjects VALUES(1, 'Fantasy');
INSERT INTO Subjects VALUES(2, 'Fiction');
INSERT INTO Subjects VALUES(3, 'Science Fiction');
INSERT INTO Subjects VALUES(4, 'Robots');
INSERT INTO Subjects VALUES(5, 'Artificial Intelligence');
INSERT INTO Subjects VALUES(6, 'Propaganda');
INSERT INTO Subjects VALUES(7, 'Thriller');
INSERT INTO Subjects VALUES(8, 'Dinosaurs');
INSERT INTO Subjects VALUES(9, 'Classic');
INSERT INTO Subjects VALUES(10, 'Biography');
INSERT INTO Subjects VALUES(11, 'History');
INSERT INTO Subjects VALUES(12, 'Sorcery');
INSERT INTO Subjects VALUES(13, 'Horror');
INSERT INTO Subjects VALUES(14, 'Suspense');
INSERT INTO Subjects VALUES(15, 'Essays');
INSERT INTO Subjects VALUES(16, 'Ethics');
INSERT INTO Subjects VALUES(17, 'Existentialism');
INSERT INTO Subjects VALUES(18, 'Logic');
INSERT INTO Subjects VALUES(19, 'Philosophy');
INSERT INTO Subjects VALUES(20, 'Sociology');
INSERT INTO Subjects VALUES(21, 'Contemporary');
INSERT INTO Subjects VALUES(22, 'Short Stories');
INSERT INTO Subjects VALUES(23, 'Poetry');
INSERT INTO Subjects VALUES(24, 'Spanish');
INSERT INTO Subjects VALUES(25, 'Drama');
INSERT INTO Subjects VALUES(26, 'Mystery');
INSERT INTO Subjects VALUES(27, 'Textbooks');
INSERT INTO Subjects VALUES(28, 'Physics');
INSERT INTO Subjects VALUES(29, 'Relativity');
INSERT INTO Subjects VALUES(30, 'Mathematics');
INSERT INTO Subjects VALUES(31, 'Science');
INSERT INTO Subjects VALUES(32, 'Differential Geometry');
INSERT INTO Subjects VALUES(33, 'Quantum Theory');
INSERT INTO Subjects VALUES(34, 'Astronomy');
INSERT INTO Subjects VALUES(35, 'Cosmology');
INSERT INTO Subjects VALUES(36, 'Genetics');
INSERT INTO Subjects VALUES(37, 'Biology');
INSERT INTO Subjects VALUES(38, 'Evolution');
INSERT INTO Subjects VALUES(39, 'Apologetics');
INSERT INTO Subjects VALUES(40, 'Magic');
INSERT INTO Subjects VALUES(41, 'Supernatural');
INSERT INTO Subjects VALUES(42, 'Religion');
INSERT INTO Subjects VALUES(43, 'Romance');
INSERT INTO Subjects VALUES(44, 'Non-fiction');
INSERT INTO Subjects VALUES(45, 'Politics');
INSERT INTO Subjects VALUES(46, 'Comedy');
INSERT INTO Subjects VALUES(47, 'Dystopian');
INSERT INTO Subjects VALUES(48, 'Epic');
INSERT INTO Subjects VALUES(49, 'Space');
INSERT INTO Subjects VALUES(50, 'Anthologies');


-- Relation table linking which author wrote each one of the books of the Books table.
-- The table consists only of a unique identifier, which represents the book identifier,
-- and an author identifier; both which are integers.

CREATE TABLE IF NOT EXISTS WrittenBy(
	BookId INTEGER PRIMARY KEY,
	AuthorId INTEGER NOT NULL
);
INSERT INTO WrittenBy VALUES(1, 1);
INSERT INTO WrittenBy VALUES(2, 1);
INSERT INTO WrittenBy VALUES(3, 1);
INSERT INTO WrittenBy VALUES(4, 1);
INSERT INTO WrittenBy VALUES(5, 1);
INSERT INTO WrittenBy VALUES(6, 1);

INSERT INTO WrittenBy VALUES(7, 2);
INSERT INTO WrittenBy VALUES(8, 2);
INSERT INTO WrittenBy VALUES(9, 2);
INSERT INTO WrittenBy VALUES(10, 2);

INSERT INTO WrittenBy VALUES(11, 3);
INSERT INTO WrittenBy VALUES(12, 3);

INSERT INTO WrittenBy VALUES(13, 4);

INSERT INTO WrittenBy VALUES(14, 5);
INSERT INTO WrittenBy VALUES(15, 5);

INSERT INTO WrittenBy VALUES(16, 6);
INSERT INTO WrittenBy VALUES(17, 6);
INSERT INTO WrittenBy VALUES(18, 6);
INSERT INTO WrittenBy VALUES(19, 6);
INSERT INTO WrittenBy VALUES(20, 6);
INSERT INTO WrittenBy VALUES(21, 6);
INSERT INTO WrittenBy VALUES(22, 6);

INSERT INTO WrittenBy VALUES(23, 7);
INSERT INTO WrittenBy VALUES(24, 7);
INSERT INTO WrittenBy VALUES(25, 7);
INSERT INTO WrittenBy VALUES(26, 7);
INSERT INTO WrittenBy VALUES(27, 7);

INSERT INTO WrittenBy VALUES(28, 8);

INSERT INTO WrittenBy VALUES(29, 9);
INSERT INTO WrittenBy VALUES(30, 9);
INSERT INTO WrittenBy VALUES(31, 9);

INSERT INTO WrittenBy VALUES(32, 10);

INSERT INTO WrittenBy VALUES(33, 11);

INSERT INTO WrittenBy VALUES(34, 12);
INSERT INTO WrittenBy VALUES(35, 12);

INSERT INTO WrittenBy VALUES(36, 13);

INSERT INTO WrittenBy VALUES(37, 14);

INSERT INTO WrittenBy VALUES(38, 15);
INSERT INTO WrittenBy VALUES(39, 15);
INSERT INTO WrittenBy VALUES(40, 15);

INSERT INTO WrittenBy VALUES(41, 16);
INSERT INTO WrittenBy VALUES(42, 16);

INSERT INTO WrittenBy VALUES(43, 17);
INSERT INTO WrittenBy VALUES(44, 17);

INSERT INTO WrittenBy VALUES(45, 18);
INSERT INTO WrittenBy VALUES(46, 18);

INSERT INTO WrittenBy VALUES(47, 19);
INSERT INTO WrittenBy VALUES(48, 19);

INSERT INTO WrittenBy VALUES(49, 20);

INSERT INTO WrittenBy VALUES(50, 21);
INSERT INTO WrittenBy VALUES(51, 21);

INSERT INTO WrittenBy VALUES(52, 22);

INSERT INTO WrittenBy VALUES(53, 23);
INSERT INTO WrittenBy VALUES(54, 23);
INSERT INTO WrittenBy VALUES(55, 23);

INSERT INTO WrittenBy VALUES(56, 24);
INSERT INTO WrittenBy VALUES(57, 24);

INSERT INTO WrittenBy VALUES(58, 25);
INSERT INTO WrittenBy VALUES(59, 25);

INSERT INTO WrittenBy VALUES(60, 26);
INSERT INTO WrittenBy VALUES(61, 26);

INSERT INTO WrittenBy VALUES(62, 27);

INSERT INTO WrittenBy VALUES(63, 28);

INSERT INTO WrittenBy VALUES(64, 29);
INSERT INTO WrittenBy VALUES(65, 29);
INSERT INTO WrittenBy VALUES(66, 29);

INSERT INTO WrittenBy VALUES(67, 30);

INSERT INTO WrittenBy VALUES(68, 31);
INSERT INTO WrittenBy VALUES(69, 31);

INSERT INTO WrittenBy VALUES(70, 32);

INSERT INTO WrittenBy VALUES(71, 33);

INSERT INTO WrittenBy VALUES(72, 34);
INSERT INTO WrittenBy VALUES(73, 34);

INSERT INTO WrittenBy VALUES(74, 35);

INSERT INTO WrittenBy VALUES(75, 36);
INSERT INTO WrittenBy VALUES(76, 36);

INSERT INTO WrittenBy VALUES(77, 37);

INSERT INTO WrittenBy VALUES(78, 38);

INSERT INTO WrittenBy VALUES(79, 39);
INSERT INTO WrittenBy VALUES(80, 39);
INSERT INTO WrittenBy VALUES(81, 39);
INSERT INTO WrittenBy VALUES(82, 39);

INSERT INTO WrittenBy VALUES(83, 40);
INSERT INTO WrittenBy VALUES(84, 40);

INSERT INTO WrittenBy VALUES(85, 41);

INSERT INTO WrittenBy VALUES(86, 42);
INSERT INTO WrittenBy VALUES(87, 42);
INSERT INTO WrittenBy VALUES(88, 42);

INSERT INTO WrittenBy VALUES(89, 43);
INSERT INTO WrittenBy VALUES(90, 43);
INSERT INTO WrittenBy VALUES(91, 43);

INSERT INTO WrittenBy VALUES(92, 44);
INSERT INTO WrittenBy VALUES(93, 44);

INSERT INTO WrittenBy VALUES(94, 45);
INSERT INTO WrittenBy VALUES(95, 45);

INSERT INTO WrittenBy VALUES(96, 46);
INSERT INTO WrittenBy VALUES(97, 46);

INSERT INTO WrittenBy VALUES(98, 47);

INSERT INTO WrittenBy VALUES(99, 48);
INSERT INTO WrittenBy VALUES(100, 48);

INSERT INTO WrittenBy VALUES(101, 49);
INSERT INTO WrittenBy VALUES(102, 49);

INSERT INTO WrittenBy VALUES(103, 50);
INSERT INTO WrittenBy VALUES(104, 50);
INSERT INTO WrittenBy VALUES(105, 50);


-- Relation table linking which publisher published each one of the books of the Books table.
-- The table consists only of an identifier, which represents the book identifier,
-- a publisher identifier, and another integer which represents the year of publication.
-- The books identifier needs not to be unique, since a single book can have one to multiple publishers.

CREATE TABLE IF NOT EXISTS PublishedBy_On(
	BookId INTEGER NOT NULL,
	PublisherId INTEGER NOT NULL,
	Year INTEGER
);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(1, 3, 2012);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(1, 4, 2012);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(1, 6, 2009);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(2, 3, 2012);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(2, 6, 2009);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(3, 3, 2012);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(3, 6, 2009);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(4, 3, 2012);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(4, 6, 2009);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(5, 3, 2012);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(5, 6, 2009);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(6, 3, 2012);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(6, 6, 2009);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(7, 5, 2008);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(7, 1, 1991);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(8, 5, 1991);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(8, 7, 2011);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(9, 8, 1991);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(10, 9, 1990);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(11, 10, 2012);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(11, 11, 1990);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(12, 10, 2012);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(13, 3, 1998);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(13, 2, 2001);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(14, 6, 2015);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(15, 12, 2003);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(16, 13, 1999);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(17, 13, 2000);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(18, 13, 2001);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(19, 13, 2002);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(20, 13, 2004);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(21, 13, 2006);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(22, 14, 2009);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(23, 15, 2011);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(24, 15, 2000);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(25, 15, 2003);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(26, 15, 2006);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(27, 15, 2013);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(28, 16, 2012);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(29, 17, 2014);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(30, 18, 2003);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(31, 19, 2013);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(31, 17, 2012);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(32, 20, 2000);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(33, 21, 2008);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(33, 22, 1998);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(34, 23, 2002);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(35, 23, 2002);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(36, 24, 1995);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(37, 6, 2009);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(37, 25, 1999);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(38, 6, 2003);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(39, 26, 1985);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(40, 27, 2003);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(41, 27, 2012);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(42, 27, 2012);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(43, 6, 2001);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(44, 28, 2015);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(45, 29, 2000);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(45, 30, 2012);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(46, 31, 2013);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(47, 30, 1994);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(48, 33, 1985);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(49, 29, 2011);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(50, 21, 1997);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(51, 34, 2012);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(52, 21, 1996);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(53, 30, 1994);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(53, 21, 1997);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(54, 36, 2011);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(55, 37, 2013);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(56, 38, 2015);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(57, 38, 2015);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(58, 21, 2002);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(58, 39, 2003);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(59, 40, 2011);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(60, 41, 2006);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(61, 42, 2001);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(62, 43, 2009);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(63, 44, 1996);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(64, 15, 1981);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(65, 45, 2003);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(66, 45, 2002);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(67, 36, 2013);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(68, 21, 2006);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(69, 46, 2014);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(70, 21, 2003);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(70, 47, 2012);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(70, 6, 2005);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(70, 17, 2015);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(70, 48, 2008);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(71, 49, 2009);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(72, 50, 2009);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(72, 18, 1996);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(73, 51, 1998);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(74, 52, 2014);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(74, 53, 2010);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(75, 18, 1993);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(76, 18, 1990);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(76, 54, 2013);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(77, 24, 2013);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(78, 17, 2014);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(78, 18, 1995);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(79, 55, 2003);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(80, 55, 2004);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(81, 55, 1993);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(82, 55, 2004);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(82, 56, 2003);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(83, 6, 2007);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(83, 22, 2000);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(83, 21, 1999);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(84, 22, 1997);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(84, 57, 2011);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(84, 21, 1998);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(85, 21, 2008);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(85, 22, 2005);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(86, 16, 2009);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(87, 16, 2012);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(88, 16, 2014);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(89, 24, 2011);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(89, 11, 2012);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(90, 24, 2011);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(90, 11, 2010);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(91, 24, 2012);
INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(91, 11, 2010);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(92, 58, 2009);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(93, 58, 1980);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(94, 59, 2015);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(95, 60, 2009);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(96, 15, 1998);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(97, 15, 2012);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(98, 10, 2013);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(99, 61, 2006);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(100, 62, 2008);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(101, 18, 2010);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(102, 20, 2014);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(103, 63, 1995);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(104, 64, 2013);

INSERT INTO PublishedBy_On(BookId, PublisherId, Year) VALUES(105, 65, 2007);


-- Relation table linking which book belongs to which subject in the Subjects table.
-- The table consists only of an identifier, which represents the book identifier,
-- and a subject identifier; both which are integers.
-- The books identifier needs not to be unique, since a single book can relate to one or multiple subjects.

CREATE TABLE IF NOT EXISTS BelongsToSubject(
	BookId INTEGER NOT NULL,
	SubjectId INTEGER NOT NULL
);
INSERT INTO BelongsToSubject VALUES(1, 1);
INSERT INTO BelongsToSubject VALUES(1, 2);

INSERT INTO BelongsToSubject VALUES(2, 1);
INSERT INTO BelongsToSubject VALUES(2, 2);

INSERT INTO BelongsToSubject VALUES(3, 1);
INSERT INTO BelongsToSubject VALUES(3, 2);

INSERT INTO BelongsToSubject VALUES(4, 1);
INSERT INTO BelongsToSubject VALUES(4, 2);

INSERT INTO BelongsToSubject VALUES(5, 1);
INSERT INTO BelongsToSubject VALUES(5, 2);

INSERT INTO BelongsToSubject VALUES(6, 1);
INSERT INTO BelongsToSubject VALUES(6, 2);

INSERT INTO BelongsToSubject VALUES(7, 3);
INSERT INTO BelongsToSubject VALUES(7, 4);
INSERT INTO BelongsToSubject VALUES(7, 5);

INSERT INTO BelongsToSubject VALUES(8, 3);
INSERT INTO BelongsToSubject VALUES(8, 4);
INSERT INTO BelongsToSubject VALUES(8, 5);

INSERT INTO BelongsToSubject VALUES(9, 3);
INSERT INTO BelongsToSubject VALUES(9, 4);
INSERT INTO BelongsToSubject VALUES(9, 5);

INSERT INTO BelongsToSubject VALUES(10, 3);
INSERT INTO BelongsToSubject VALUES(10, 4);
INSERT INTO BelongsToSubject VALUES(10, 5);

INSERT INTO BelongsToSubject VALUES(11, 3);
INSERT INTO BelongsToSubject VALUES(11, 7);
INSERT INTO BelongsToSubject VALUES(11, 8);

INSERT INTO BelongsToSubject VALUES(12, 3);
INSERT INTO BelongsToSubject VALUES(12, 7);
INSERT INTO BelongsToSubject VALUES(12, 8);

INSERT INTO BelongsToSubject VALUES(13, 6);
INSERT INTO BelongsToSubject VALUES(13, 10);
INSERT INTO BelongsToSubject VALUES(13, 11);

INSERT INTO BelongsToSubject VALUES(14, 39);

INSERT INTO BelongsToSubject VALUES(15, 1);
INSERT INTO BelongsToSubject VALUES(15, 3);
INSERT INTO BelongsToSubject VALUES(15, 9);

INSERT INTO BelongsToSubject VALUES(16, 1);
INSERT INTO BelongsToSubject VALUES(16, 12);
INSERT INTO BelongsToSubject VALUES(16, 40);

INSERT INTO BelongsToSubject VALUES(17, 1);
INSERT INTO BelongsToSubject VALUES(17, 12);
INSERT INTO BelongsToSubject VALUES(17, 40);

INSERT INTO BelongsToSubject VALUES(18, 1);
INSERT INTO BelongsToSubject VALUES(18, 12);
INSERT INTO BelongsToSubject VALUES(18, 40);

INSERT INTO BelongsToSubject VALUES(19, 1);
INSERT INTO BelongsToSubject VALUES(19, 12);
INSERT INTO BelongsToSubject VALUES(19, 40);

INSERT INTO BelongsToSubject VALUES(20, 1);
INSERT INTO BelongsToSubject VALUES(20, 12);
INSERT INTO BelongsToSubject VALUES(20, 40);

INSERT INTO BelongsToSubject VALUES(21, 1);
INSERT INTO BelongsToSubject VALUES(21, 12);
INSERT INTO BelongsToSubject VALUES(21, 40);

INSERT INTO BelongsToSubject VALUES(22, 1);
INSERT INTO BelongsToSubject VALUES(22, 12);
INSERT INTO BelongsToSubject VALUES(22, 40);

INSERT INTO BelongsToSubject VALUES(23, 1);
INSERT INTO BelongsToSubject VALUES(23, 2);

INSERT INTO BelongsToSubject VALUES(24, 1);
INSERT INTO BelongsToSubject VALUES(24, 2);

INSERT INTO BelongsToSubject VALUES(25, 1);
INSERT INTO BelongsToSubject VALUES(25, 2);

INSERT INTO BelongsToSubject VALUES(26, 1);
INSERT INTO BelongsToSubject VALUES(26, 2);

INSERT INTO BelongsToSubject VALUES(27, 1);
INSERT INTO BelongsToSubject VALUES(27, 2);

INSERT INTO BelongsToSubject VALUES(28, 13);
INSERT INTO BelongsToSubject VALUES(28, 41);

INSERT INTO BelongsToSubject VALUES(29, 17);
INSERT INTO BelongsToSubject VALUES(29, 19);
INSERT INTO BelongsToSubject VALUES(29, 21);

INSERT INTO BelongsToSubject VALUES(30, 17);
INSERT INTO BelongsToSubject VALUES(30, 19);
INSERT INTO BelongsToSubject VALUES(30, 21);

INSERT INTO BelongsToSubject VALUES(31, 17);
INSERT INTO BelongsToSubject VALUES(31, 19);
INSERT INTO BelongsToSubject VALUES(31, 21);
INSERT INTO BelongsToSubject VALUES(31, 42);

INSERT INTO BelongsToSubject VALUES(32, 11);
INSERT INTO BelongsToSubject VALUES(32, 17);
INSERT INTO BelongsToSubject VALUES(32, 19);
INSERT INTO BelongsToSubject VALUES(32, 21);

INSERT INTO BelongsToSubject VALUES(33, 11);
INSERT INTO BelongsToSubject VALUES(33, 18);
INSERT INTO BelongsToSubject VALUES(33, 19);

INSERT INTO BelongsToSubject VALUES(34, 18);
INSERT INTO BelongsToSubject VALUES(34, 19);

INSERT INTO BelongsToSubject VALUES(35, 18);
INSERT INTO BelongsToSubject VALUES(35, 19);

INSERT INTO BelongsToSubject VALUES(36, 19);
INSERT INTO BelongsToSubject VALUES(36, 20);
INSERT INTO BelongsToSubject VALUES(36, 21);

INSERT INTO BelongsToSubject VALUES(37, 2);
INSERT INTO BelongsToSubject VALUES(37, 9);
INSERT INTO BelongsToSubject VALUES(37, 21);

INSERT INTO BelongsToSubject VALUES(38, 2);
INSERT INTO BelongsToSubject VALUES(38, 9);

INSERT INTO BelongsToSubject VALUES(39, 2);
INSERT INTO BelongsToSubject VALUES(39, 9);
INSERT INTO BelongsToSubject VALUES(39, 24);

INSERT INTO BelongsToSubject VALUES(40, 2);
INSERT INTO BelongsToSubject VALUES(40, 9);
INSERT INTO BelongsToSubject VALUES(40, 24);

INSERT INTO BelongsToSubject VALUES(41, 2);
INSERT INTO BelongsToSubject VALUES(41, 22);
INSERT INTO BelongsToSubject VALUES(41, 24);

INSERT INTO BelongsToSubject VALUES(42, 2);
INSERT INTO BelongsToSubject VALUES(42, 22);
INSERT INTO BelongsToSubject VALUES(42, 24);

INSERT INTO BelongsToSubject VALUES(43, 2);
INSERT INTO BelongsToSubject VALUES(43, 11);
INSERT INTO BelongsToSubject VALUES(43, 24);

INSERT INTO BelongsToSubject VALUES(44, 11);
INSERT INTO BelongsToSubject VALUES(44, 43);

INSERT INTO BelongsToSubject VALUES(45, 2);
INSERT INTO BelongsToSubject VALUES(45, 11);
INSERT INTO BelongsToSubject VALUES(45, 24);

INSERT INTO BelongsToSubject VALUES(46, 2);
INSERT INTO BelongsToSubject VALUES(46, 11);
INSERT INTO BelongsToSubject VALUES(46, 24);
INSERT INTO BelongsToSubject VALUES(46, 43);

INSERT INTO BelongsToSubject VALUES(47, 11);
INSERT INTO BelongsToSubject VALUES(47, 21);

INSERT INTO BelongsToSubject VALUES(48, 2);
INSERT INTO BelongsToSubject VALUES(48, 11);
INSERT INTO BelongsToSubject VALUES(48, 21);
INSERT INTO BelongsToSubject VALUES(48, 22);

INSERT INTO BelongsToSubject VALUES(49, 2);
INSERT INTO BelongsToSubject VALUES(49, 22);
INSERT INTO BelongsToSubject VALUES(49, 24);

INSERT INTO BelongsToSubject VALUES(50, 15);
INSERT INTO BelongsToSubject VALUES(50, 22);
INSERT INTO BelongsToSubject VALUES(50, 24);
INSERT INTO BelongsToSubject VALUES(50, 44);

INSERT INTO BelongsToSubject VALUES(51, 23);

INSERT INTO BelongsToSubject VALUES(52, 24);
INSERT INTO BelongsToSubject VALUES(52, 2);
INSERT INTO BelongsToSubject VALUES(52, 11);

INSERT INTO BelongsToSubject VALUES(53, 24);
INSERT INTO BelongsToSubject VALUES(53, 9);
INSERT INTO BelongsToSubject VALUES(53, 22);

INSERT INTO BelongsToSubject VALUES(54, 24);
INSERT INTO BelongsToSubject VALUES(54, 22);
INSERT INTO BelongsToSubject VALUES(54, 2);

INSERT INTO BelongsToSubject VALUES(55, 22);
INSERT INTO BelongsToSubject VALUES(55, 2);

INSERT INTO BelongsToSubject VALUES(56, 23);
INSERT INTO BelongsToSubject VALUES(56, 24);

INSERT INTO BelongsToSubject VALUES(57, 24);
INSERT INTO BelongsToSubject VALUES(57, 2);

INSERT INTO BelongsToSubject VALUES(58, 2);

INSERT INTO BelongsToSubject VALUES(59, 2);
INSERT INTO BelongsToSubject VALUES(59, 24);

INSERT INTO BelongsToSubject VALUES(60, 11);

INSERT INTO BelongsToSubject VALUES(61, 2);

INSERT INTO BelongsToSubject VALUES(62, 24);
INSERT INTO BelongsToSubject VALUES(62, 45);
INSERT INTO BelongsToSubject VALUES(62, 15);

INSERT INTO BelongsToSubject VALUES(63, 45);
INSERT INTO BelongsToSubject VALUES(63, 11);
INSERT INTO BelongsToSubject VALUES(63, 44);

INSERT INTO BelongsToSubject VALUES(64, 9);

INSERT INTO BelongsToSubject VALUES(65, 2);
INSERT INTO BelongsToSubject VALUES(65, 9);

INSERT INTO BelongsToSubject VALUES(66, 2);
INSERT INTO BelongsToSubject VALUES(66, 9);

INSERT INTO BelongsToSubject VALUES(67, 24);
INSERT INTO BelongsToSubject VALUES(67, 25);
INSERT INTO BelongsToSubject VALUES(67, 2);

INSERT INTO BelongsToSubject VALUES(68, 23);

INSERT INTO BelongsToSubject VALUES(69, 23);

INSERT INTO BelongsToSubject VALUES(70, 9);

INSERT INTO BelongsToSubject VALUES(71, 24);
INSERT INTO BelongsToSubject VALUES(71, 2);
INSERT INTO BelongsToSubject VALUES(71, 11);

INSERT INTO BelongsToSubject VALUES(72, 9);
INSERT INTO BelongsToSubject VALUES(72, 3);

INSERT INTO BelongsToSubject VALUES(73, 9);
INSERT INTO BelongsToSubject VALUES(73, 2);

INSERT INTO BelongsToSubject VALUES(74, 14);
INSERT INTO BelongsToSubject VALUES(74, 25);
INSERT INTO BelongsToSubject VALUES(74, 26);

INSERT INTO BelongsToSubject VALUES(75, 9);
INSERT INTO BelongsToSubject VALUES(75, 2);

INSERT INTO BelongsToSubject VALUES(76, 9);
INSERT INTO BelongsToSubject VALUES(76, 27);
INSERT INTO BelongsToSubject VALUES(76, 46);

INSERT INTO BelongsToSubject VALUES(77, 3);
INSERT INTO BelongsToSubject VALUES(77, 47);

INSERT INTO BelongsToSubject VALUES(78, 9);
INSERT INTO BelongsToSubject VALUES(78, 2);

INSERT INTO BelongsToSubject VALUES(79, 9);
INSERT INTO BelongsToSubject VALUES(79, 2);

INSERT INTO BelongsToSubject VALUES(80, 9);
INSERT INTO BelongsToSubject VALUES(80, 2);

INSERT INTO BelongsToSubject VALUES(81, 9);
INSERT INTO BelongsToSubject VALUES(81, 2);

INSERT INTO BelongsToSubject VALUES(82, 9);
INSERT INTO BelongsToSubject VALUES(82, 2);

INSERT INTO BelongsToSubject VALUES(83, 9);
INSERT INTO BelongsToSubject VALUES(83, 23);
INSERT INTO BelongsToSubject VALUES(83, 48);

INSERT INTO BelongsToSubject VALUES(84, 9);
INSERT INTO BelongsToSubject VALUES(84, 23);
INSERT INTO BelongsToSubject VALUES(84, 48);

INSERT INTO BelongsToSubject VALUES(85, 9);
INSERT INTO BelongsToSubject VALUES(85, 23);
INSERT INTO BelongsToSubject VALUES(85, 48);

INSERT INTO BelongsToSubject VALUES(86, 7);
INSERT INTO BelongsToSubject VALUES(86, 11);
INSERT INTO BelongsToSubject VALUES(86, 26);

INSERT INTO BelongsToSubject VALUES(87, 7);
INSERT INTO BelongsToSubject VALUES(87, 11);
INSERT INTO BelongsToSubject VALUES(87, 26);

INSERT INTO BelongsToSubject VALUES(88, 7);
INSERT INTO BelongsToSubject VALUES(88, 11);
INSERT INTO BelongsToSubject VALUES(88, 26);

INSERT INTO BelongsToSubject VALUES(89, 7);
INSERT INTO BelongsToSubject VALUES(89, 14);
INSERT INTO BelongsToSubject VALUES(89, 26);

INSERT INTO BelongsToSubject VALUES(90, 7);
INSERT INTO BelongsToSubject VALUES(90, 14);
INSERT INTO BelongsToSubject VALUES(90, 26);

INSERT INTO BelongsToSubject VALUES(91, 7);
INSERT INTO BelongsToSubject VALUES(91, 14);
INSERT INTO BelongsToSubject VALUES(91, 26);

INSERT INTO BelongsToSubject VALUES(92, 27);
INSERT INTO BelongsToSubject VALUES(93, 28);
INSERT INTO BelongsToSubject VALUES(93, 29);
INSERT INTO BelongsToSubject VALUES(93, 31);
INSERT INTO BelongsToSubject VALUES(93, 34);
INSERT INTO BelongsToSubject VALUES(93, 35);

INSERT INTO BelongsToSubject VALUES(93, 27);
INSERT INTO BelongsToSubject VALUES(93, 30);
INSERT INTO BelongsToSubject VALUES(93, 31);
INSERT INTO BelongsToSubject VALUES(93, 32);

INSERT INTO BelongsToSubject VALUES(94, 27);
INSERT INTO BelongsToSubject VALUES(94, 28);
INSERT INTO BelongsToSubject VALUES(94, 31);
INSERT INTO BelongsToSubject VALUES(94, 33);

INSERT INTO BelongsToSubject VALUES(95, 28);
INSERT INTO BelongsToSubject VALUES(95, 31);
INSERT INTO BelongsToSubject VALUES(95, 33);
INSERT INTO BelongsToSubject VALUES(95, 35);

INSERT INTO BelongsToSubject VALUES(96, 28);
INSERT INTO BelongsToSubject VALUES(96, 31);
INSERT INTO BelongsToSubject VALUES(96, 34);
INSERT INTO BelongsToSubject VALUES(96, 35);

INSERT INTO BelongsToSubject VALUES(97, 28);
INSERT INTO BelongsToSubject VALUES(97, 31);
INSERT INTO BelongsToSubject VALUES(97, 34);
INSERT INTO BelongsToSubject VALUES(97, 35);

INSERT INTO BelongsToSubject VALUES(98, 31);
INSERT INTO BelongsToSubject VALUES(98, 34);
INSERT INTO BelongsToSubject VALUES(98, 35);
INSERT INTO BelongsToSubject VALUES(98, 49);

INSERT INTO BelongsToSubject VALUES(99, 31);
INSERT INTO BelongsToSubject VALUES(99, 36);
INSERT INTO BelongsToSubject VALUES(99, 37);
INSERT INTO BelongsToSubject VALUES(99, 38);

INSERT INTO BelongsToSubject VALUES(100, 11);
INSERT INTO BelongsToSubject VALUES(100, 19);
INSERT INTO BelongsToSubject VALUES(100, 31);
INSERT INTO BelongsToSubject VALUES(100, 38);
INSERT INTO BelongsToSubject VALUES(100, 42);

INSERT INTO BelongsToSubject VALUES(101, 27);
INSERT INTO BelongsToSubject VALUES(101, 28);
INSERT INTO BelongsToSubject VALUES(101, 30);
INSERT INTO BelongsToSubject VALUES(101, 31);
INSERT INTO BelongsToSubject VALUES(101, 33);

INSERT INTO BelongsToSubject VALUES(102, 27);
INSERT INTO BelongsToSubject VALUES(102, 28);
INSERT INTO BelongsToSubject VALUES(102, 31);
INSERT INTO BelongsToSubject VALUES(102, 33);

INSERT INTO BelongsToSubject VALUES(103, 19);
INSERT INTO BelongsToSubject VALUES(103, 28);
INSERT INTO BelongsToSubject VALUES(103, 31);
INSERT INTO BelongsToSubject VALUES(103, 45);
INSERT INTO BelongsToSubject VALUES(103, 50);

INSERT INTO BelongsToSubject VALUES(104, 9);
INSERT INTO BelongsToSubject VALUES(104, 28);
INSERT INTO BelongsToSubject VALUES(104, 29);
INSERT INTO BelongsToSubject VALUES(104, 31);
INSERT INTO BelongsToSubject VALUES(104, 34);
INSERT INTO BelongsToSubject VALUES(104, 35);
INSERT INTO BelongsToSubject VALUES(104, 49);

INSERT INTO BelongsToSubject VALUES(105, 16);
INSERT INTO BelongsToSubject VALUES(105, 42);
INSERT INTO BelongsToSubject VALUES(105, 19);


COMMIT;