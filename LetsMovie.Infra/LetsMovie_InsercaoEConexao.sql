/* =========================================================================
=                                                                          = 
=                                                                          = 
=          COMANDOS - INSER��O DE DADOS E RELACIONAMENTO                   =
=                           DATA: 31/07/2022                               = 
=                                                                          =
=                                                                          =
=                                                                          =   
============================================================================*/



/* 
   ================= Tables =================
      ** Documentary AND Producer **
*/

-- Documentary - INSERT

INSERT INTO Documentary (Title, Country) VALUES ('Harry Potter - 20 anos de magia: De Volta a Hogwarts','USA')
INSERT INTO Documentary (Title, Country) VALUES ('Bijag�s - O tesouro sagrado','African Movie')
INSERT INTO Documentary (Title, Country) VALUES ('A marcha dos Pinguins','European Movie')
INSERT INTO Documentary (Title, Country) VALUES ('Ilha das Flores','Brazil')
INSERT INTO Documentary (Title, Country) VALUES ('Little miss sum�','Asiatic Movie')
INSERT INTO Documentary (Title, Country) VALUES ('�Onde Est� Am�rica Latina?','LatinAmerica Movie')

-- Producer - INSERT

INSERT INTO Producer (Name) VALUES ('NetFlix')
INSERT INTO Producer (Name) VALUES ('Sussuarana Filmes')
INSERT INTO Producer (Name) VALUES ('Casa de Cinema de Porto Alegre ')
INSERT INTO Producer (Name) VALUES ('Buena Vista International')
INSERT INTO Producer (Name) VALUES ('CPLP Audiovisual')
INSERT INTO Producer (Name) VALUES ('Casey Patterson Entertainment')

-- Documentary - UPDATE

UPDATE Documentary 
SET ID_Prod = 6
WHERE Title = 'Harry Potter - 20 anos de magia: De Volta a Hogwarts'

UPDATE Documentary 
SET ID_Prod = 5
WHERE Title = 'Bijag�s - O tesouro sagrado'

UPDATE Documentary 
SET ID_Prod = 4
WHERE Title = 'A marcha dos Pinguins'

UPDATE Documentary 
SET ID_Prod = 3
WHERE Title = 'Ilha das Flores '

UPDATE Documentary 
SET ID_Prod = 1
WHERE Title = 'Little miss sum�'

UPDATE Documentary 
SET ID_Prod =4
WHERE Title = '�Onde Est� Am�rica Latina?'

-- Documentary / Producer - Conex�o

SELECT *
from Documentary a
left join Producer b
ON a.ID_Prod = b.ID_Prod


/* ========================================================= */

/* 
   ================= Tables =================
      ** Principal Actor, Act AND Movie ***/

-- Movie

INSERT INTO Movie (Title, Gender, DateOfRelease) VALUES ('O Poderoso Chef�o','Action','1972-03-24')
INSERT INTO Movie (Title, Gender, DateOfRelease) VALUES ('Thor: Amor e Trov�o','Heroes','2022-07-07')
INSERT INTO Movie (Title, Gender, DateOfRelease) VALUES ('V de vingan�a','Action','2006-04-07')
INSERT INTO Movie (Title, Gender, DateOfRelease) VALUES ('Di�rio de uma paix�o','Romance','2004-08-13')
INSERT INTO Movie (Title, Gender, DateOfRelease) VALUES ('O Exorcista','Horror','1974-06-29')
INSERT INTO Movie (Title, Gender, DateOfRelease) VALUES ('Indiana Jones: O reino da caveira de cristal','Adventure','2008-05-21')
INSERT INTO Movie (Title, Gender, DateOfRelease) VALUES ('O auto  da compadecida','Comedy','2000-09-10')
INSERT INTO Movie (Title, Gender, DateOfRelease) VALUES ('A verdade nua e crua','Romantic Comedy','2009-09-18')

	  	   	   
-- Principal Actor

INSERT INTO PrincipalActor(Name) VALUES ('Al Pacino')
INSERT INTO PrincipalActor(Name) VALUES ('Ryan Gosling')
INSERT INTO PrincipalActor(Name) VALUES ('Matheus Nachtergaele')
INSERT INTO PrincipalActor(Name) VALUES ('Chris Hemsworth')
INSERT INTO PrincipalActor(Name) VALUES ('Natalie Portman')
INSERT INTO PrincipalActor(Name) VALUES ('Harisson Ford')
INSERT INTO PrincipalActor(Name) VALUES ('Linda Blair')
INSERT INTO PrincipalActor(Name) VALUES ('Katherine Heigl')

-- Act

INSERT INTO Act(Role) VALUES ('Michael Corleone')
INSERT INTO Act(Role) VALUES ('Noah J�nior')
INSERT INTO Act(Role) VALUES ('Abby Richter')
INSERT INTO Act(Role) VALUES ('Thor')
INSERT INTO Act(Role) VALUES ('Indiana Jones')
INSERT INTO Act(Role) VALUES ('Regan MacNeil')
INSERT INTO Act(Role) VALUES ('Jo�o Grilo')
INSERT INTO Act(Role) VALUES ('Evey Rammond')


------ UPDATE ACT --------

UPDATE Act
SET ID_Actor = 5
WHERE Role = 'Evey Rammond'

UPDATE Act
SET ID_Movie = 3
WHERE Role = 'Evey Rammond'



UPDATE Act
SET ID_Actor = 3
WHERE Role = 'Jo�o Grilo'

UPDATE Act
SET ID_Movie = 7
WHERE Role = 'Jo�o Grilo'



UPDATE Act
SET ID_Actor = 7
WHERE Role = 'Regan MacNeil'

UPDATE Act
SET ID_Movie = 5
WHERE Role = 'Regan MacNeil'



UPDATE Act
SET ID_Actor = 6
WHERE Role = 'Indiana Jones'

UPDATE Act
SET ID_Movie = 6
WHERE Role = 'Indiana Jones'



UPDATE Act
SET ID_Actor = 4
WHERE Role = 'Thor'

UPDATE Act
SET ID_Movie = 2
WHERE Role = 'Thor'




UPDATE Act
SET ID_Actor = 8
WHERE Role = 'Abby Richter'

UPDATE Act
SET ID_Movie = 8
WHERE Role = 'Abby Richter'



UPDATE Act
SET ID_Actor = 2
WHERE Role = 'Noah J�nior'

UPDATE Act
SET ID_Movie = 4
WHERE Role = 'Noah J�nior'



UPDATE Act
SET ID_Actor = 1
WHERE Role = 'Michael Corleone'

UPDATE Act
SET ID_Movie = 1
WHERE Role = 'Michael Corleone'

/* 
   ================= Tables =================
      ** Serie AND Episode ***/

INSERT INTO Serie (Title,Season, NumberOfEpisode) VALUES ('Stranger Things','4','9')
INSERT INTO Serie (Title,Season, NumberOfEpisode) VALUES ('Game of Thrones','8','6')
INSERT INTO Serie (Title,Season, NumberOfEpisode) VALUES ('Bel-Air','1','10')
INSERT INTO Serie (Title,Season, NumberOfEpisode) VALUES ('A Maldi��o da Resid�ncia Hill','1','10')
INSERT INTO Serie (Title,Season, NumberOfEpisode) VALUES ('Todo Mundo Odeia o Chris','4','22')
INSERT INTO Serie (Title,Season, NumberOfEpisode) VALUES ('Friends','10','18')
INSERT INTO Serie (Title,Season, NumberOfEpisode) VALUES ('Hannibal','3','13')


-- Todo mundo Odeia o Chris

INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia Tattaglia','1','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia Bolo','2','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia Baile de Boas Vindas','3','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia A Professora de Literatura','4','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia O Meu Brother','5','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia O Docs','6','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia X-9','7','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia Garotas Altas e Magras','8','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia O James','9','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia V�spera de Ano Novo','10','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia O Sr','11','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia Lutadores Fracassados','12','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia Identidades Falsas','13','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia Exames para Faculdade','14','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia Boxe','15','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia Lasanha','16','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia A Semana da Primavera','17','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia Carro','18','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia Lavar a Lou�a','19','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia Tasha','20','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia Amea�as de Bomba','21','5')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Todo Mundo Odeia O Supletivo','22','5')


-- Stranger Things

INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Cap�tulo um: O Clube Hellfire','1','1')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Cap�tulo dois: A Maldi��o de Vecna','2','1')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Cap�tulo tr�s: O monstro e a super-hero�na','3','1')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Cap�tulo quatro: Querido Billy','4','1')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Cap�tulo cinco: Projeto Nina','5','1')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Cap�tulo seis: Mergulho','6','1')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Cap�tulo sete: O Massacre no Laborat�rio de Hawkings','7','1')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Cap�tulo oito: Papai','8','1')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Cap�tulo nove: E o Plano de Onze','9','1')

-- Hannibal

INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Ap�ritif','1','7')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Amuse-Bouche','2','7')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Potage','3','7')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Oeuf','4','7')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Coquilles','5','7')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Entr�e','6','7')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Sorbet','7','7')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Fromage','8','7')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Trou Normand','9','7')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Buffet froid','10','7')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('R�ti','11','7')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Relev�s','12','7')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Savoureux ','13','7')

-- Game of thrones

INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Winterfell','1','2')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Uma Cavaleira dos Sete Reinos','2','2')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('A Longa Noite','3','2')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Os �ltimos Starks','4','2')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('The Bells','5','2')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('O Trono de Ferro','6','2')

-- Bel-Air

INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Sonhos e Pesadelos','1','3')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Mantenha a Cabe�a Erguida','2','3')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Yamacraw','3','3')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Campanha','4','3')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Da Pensilv�nia para Los Angeles','5','3')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('A For�a para Sorrir','6','3')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aqui se Faz Aqui se Paga','7','3')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('N�nguem Ganha Quando a Fam�lia Briga','8','3')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Sem Trapa�a','9','3')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Para Onde?','10','3')


-- Friends

INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele depois do Beijo do Joey e da Rachel','1','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele em que o Ross Est� Legal','2','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele com o Bronzeado do Ross','3','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele com o Bolo','4','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele que a Irm� da Rachel Fica de Bab�','5','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele com a Bolsa de Estudos do Ross','6','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele com o Balan�o','7','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele com o A��o de Gra�as Atrasado','8','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele com a M�e Biol�gica','9','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele em que o Chandler � Pego','10','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele em que o Stripper Chora','11','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele com o Casamento de Phoebe','12','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele em que Joey Fala Franc�s','13','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele com a Princesa Consuela','14','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele em que a Estelle Morre','15','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Aquele com a Festa de Despedida da Rachel','16','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('O �ltimo - Parte 1','17','6')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('O �ltimo - Parte 2 ','18','6')


-- A Maldi��o da Resid�ncia Hill

INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Steven V� um Fantasma','1','4')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Caix�o Aberto','2','4')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Toque','3','4')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Coisa de G�meos','4','4')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('A Mo�a do Pesco�o Torto','5','4')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Duas Tempestades','6','4')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Eulogia','7','4')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Marcas de Uso','8','4')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('Pesadelo','9','4')
INSERT INTO Episode  (Title,NumberOfSeasonsEpisode, ID_Serie) VALUES ('O Sil�ncio Repousa Soberano','10','4')


