
create database dbnhasach;

use dbnhasach;

CREATE TABLE TACPHAM(
	NT 		smallint primary key ,
	tua 		varchar(150),
	tacgia 		varchar(100),
    soluong 	int
) ;



CREATE TABLE DOCGIA (
	ND		smallint PRIMARY KEY ,
	ho		VARCHAR(30),
	ten		VARCHAR(30),
	dchi	VARCHAR(100),
	tel		CHAR(10)
) ;
CREATE TABLE DOCGIACU(
	ND smallint not null,
    foreign key(ND) references DOCGIA(ND)
);

CREATE TABLE sachdaxoa(
	NT smallint not null,
    foreign key(NT) references TACPHAM(NT)
);


CREATE TABLE MUON (
	NT		smallint not null, 
	foreign key(NT) references TACPHAM(NT),
	ngaymuon	datetime not NULL,
	hantra	datetime not null,
	ngaytra 	datetime,
	ND		smallint not null, 
	foreign key(ND) references DOCGIA(ND),
	primary key 	(NT, ngaymuon)
) ;


INSERT INTO TACPHAM VALUES (1,'Les miserables','Victor Hugo', 5);
INSERT INTO TACPHAM VALUES (2,'Germinal ','Emile Zola', 4);
INSERT INTO TACPHAM VALUES (3,'Madame Bovary','Gustave Flaubert', 3);
INSERT INTO TACPHAM VALUES (4,'Les Fleurs du mal','Charles Baudelaire',2);
INSERT INTO TACPHAM VALUES (5,'La Bete Humaine','Emile Zola', 4);
INSERT INTO TACPHAM VALUES (6,'Le Pere Goriot ','Honore de Balzac', 7);
INSERT INTO TACPHAM VALUES (7,'Le Rouge et le Noir','Stendhal', 8);
INSERT INTO TACPHAM VALUES (8,'Une vie','Guy de Maupassant', 10);
INSERT INTO TACPHAM VALUES (9,'Ubu Roi','Alfred Jarry', 11);
INSERT INTO TACPHAM VALUES (10,'Poésie','Arthur Rimbaud', 9);
INSERT INTO TACPHAM VALUES (11,'La Mare au Diable','George Sand', 5);
INSERT INTO TACPHAM VALUES (12,'Carmen','Prosper Merimee', 7);
INSERT INTO TACPHAM VALUES (13,'Lettres de mon moulin','Alphonse Daudet', 7);
INSERT INTO TACPHAM VALUES (14,'Les contes du chat perché','Marcel Ayme', 4);
INSERT INTO TACPHAM VALUES (15,'La Peste','Albert Camus', 9);
INSERT INTO TACPHAM VALUES (16,'Le petit prince','Antoine de St Exupery', 6);


INSERT INTO DOCGIA VALUES (1,'Lecoeur','Jeanette','16 rue de la République, 75010 Paris','0145279274');
INSERT INTO DOCGIA VALUES (2,'Lecoeur','Philippe','16 rue de la République, 75010 Paris','0145279274');
INSERT INTO DOCGIA VALUES (3,'Dupont','Yvan','73 rue Lamarck, 75018 Paris','0163538294');
INSERT INTO DOCGIA VALUES (4,'Mercier','Claude','155 avenue Parmentier, 75011 Paris','0136482736');
INSERT INTO DOCGIA VALUES (5,'Léger','Marc','90 avenue du Maine, 75014 Paris','0164832947');
INSERT INTO DOCGIA VALUES (6,'Martin','Laure','51 boulevard Diderot, 75012 Paris','0174693277');
INSERT INTO DOCGIA VALUES (7,'Crozier','Martine','88 rue des Portes Blanches, 75018 Paris','0146829384');
INSERT INTO DOCGIA VALUES (8,'Lebon','Clément','196 boulevard de Sebastopol, 75001 Paris','0132884739');
INSERT INTO DOCGIA VALUES (9,'Dufour','Jacques','32 rue des Alouettes, 75003 Paris','0155382940');
INSERT INTO DOCGIA VALUES (10,'Dufour','Antoine','32 rue des Alouettes, 75003 Paris','0155382940');
INSERT INTO DOCGIA VALUES (11,'Dufour','Stéphanie','32 rue des Alouettes, 75003 Paris','0155382940');
INSERT INTO DOCGIA VALUES (12,'Raymond','Carole','35 rue Oberkampf, 75011 Paris','0153829402');
INSERT INTO DOCGIA VALUES (13,'Durand','Albert','4 rue Mandar, 75002 Paris','0642374021');
INSERT INTO DOCGIA VALUES (14,'Wilson','Paul','12 rue Paul Vaillant Couturier, 92400 Montrouge','0642327407');
INSERT INTO DOCGIA VALUES (15,'Grecault','Philippe','15 rue de la Roquette, 75012 Paris','0132762983');
INSERT INTO DOCGIA VALUES (16,'Carre','Stéphane','51 boulevard Diderot, 75012 Paris','0174693277');
INSERT INTO DOCGIA VALUES (17,'Johnson','Astrid','3 rue Léon Blum, 75002 Paris','0143762947');
INSERT INTO DOCGIA VALUES (18,'Mirou','Caroline','2 square Mirabeau, 75011 Paris','0163827399');
INSERT INTO DOCGIA VALUES (19,'Espelette','Jean-Jacques','141 avenue de France, 75019 Paris','0134887264');
INSERT INTO DOCGIA VALUES (20,'Despentes','Anthony','56 boulevard de la Villette, 75019 Paris','0133889463');
INSERT INTO DOCGIA VALUES (21,'Terlu','Véronique','45 rue des Batignolles, 75020 Paris','0165998372');
INSERT INTO DOCGIA VALUES (22,'Rihour','Cécile','7 rue Montorgueil, 75002 Paris','0166894754');
INSERT INTO DOCGIA VALUES (23,'Franchet','Pierre','160 rue Montmartre, 75009 Paris','0633628549');
INSERT INTO DOCGIA VALUES (24,'Trochet','Ernest','34 rue de l''Esperance, 75008 Paris','0638295563');
INSERT INTO DOCGIA VALUES (25,'Gainard','Simon','55 rue Desnouettes, 75015 Paris','0174928934');
INSERT INTO DOCGIA VALUES (26,'Touche','Johanna','14 rue du Bac, 75006 Paris','0619384065');
INSERT INTO DOCGIA VALUES (27,'Cornu','Sylvain','22 rue Mouffetard, 75005 Paris','0184927489');
INSERT INTO DOCGIA VALUES (28,'Frederic','Cyril','15 rue du Simplon, 75018 Paris','0173625492');
INSERT INTO DOCGIA VALUES (29,'Crestard','Cedric','5 rue Doudeauville, 75018 Paris','0629485700');
INSERT INTO DOCGIA VALUES (30,'Le Bihan','Karine','170 bis rue Ordener, 75018 Paris','0638995221');



INSERT INTO MUON VALUES (1,'2019-9-2','2019-9-16','2007-9-7',1);
INSERT INTO MUON VALUES (1,'2019-10-1','2019-10-15','2019-10-11',26);
INSERT INTO MUON VALUES (1,'2019-6-14','2019-6-28','2019-6-19',2);
INSERT INTO MUON VALUES (1,'2019-4-27','2019-5-11','2019-5-8',3);
INSERT INTO MUON VALUES (2,'2019-8-23','2019-9-6','2019-9-2',4);
INSERT INTO MUON VALUES (2,'2019-10-6','2019-10-20', NULL,28);
INSERT INTO MUON VALUES (9,'2019-10-6','2019-10-20', NULL,28);
INSERT INTO MUON VALUES (3,'2019-9-9','2019-9-23','2019-9-13',3);
INSERT INTO MUON VALUES (4,'2019-2-8','2019-2-22','2019-2-12',12);
INSERT INTO MUON VALUES (4,'2019-2-7','2019-2-21','2019-2-20',4);
INSERT INTO MUON VALUES (4,'2019-6-17','2019-7-1','2019-6-27',5);
INSERT INTO MUON VALUES (5,'2019-10-4','2019-10-19', NULL,16);
INSERT INTO MUON VALUES (6,'2019-3-11','2019-3-25','2019-3-16',3);
INSERT INTO MUON VALUES (8,'2019-7-14','2019-7-28','2019-7-20',18);
INSERT INTO MUON VALUES (8,'2019-3-9','2019-3-23','2019-3-27',13);
INSERT INTO MUON VALUES (10,'2019-4-11','2019-4-25','2019-4-23',8);
INSERT INTO MUON VALUES (10,'2019-1-27','2019-2-10','2019-1-31',7);
INSERT INTO MUON VALUES (11,'2019-10-1','2019-10-15', NULL,22);
INSERT INTO MUON VALUES (12,'2019-3-3','2019-3-17','2019-3-13',7);
INSERT INTO MUON VALUES (14,'2019-10-2','2019-10-16', NULL,1);
INSERT INTO MUON VALUES (15,'2019-5-4','2019-5-18','2019-5-12',10);
INSERT INTO MUON VALUES (16,'2019-10-5','2019-10-19', NULL,2);
INSERT INTO MUON VALUES (10,'2019-7-4','2019-7-18','2019-7-11',3);
INSERT INTO MUON VALUES (12,'2019-12-17','2019-12-31','2006-12-17',27);
INSERT INTO MUON VALUES (12,'2019-9-6','2019-9-20','2007-9-22',9);
INSERT INTO MUON VALUES (11,'2019-9-7','2019-9-21','2007-9-19',14);
INSERT INTO MUON VALUES (13,'2019-2-14','2019-2-28','2007-2-20',26);
INSERT INTO MUON VALUES (13,'2019-8-19','2019-9-2','2006-9-3',1);
INSERT INTO MUON VALUES (14,'2019-11-15','2019-11-29','2006-11-22',9);
INSERT INTO MUON VALUES (14,'2019-9-20','2019-10-4', NULL,27);


DELIMITER //
CREATE PROCEDURE  selectFromDocgia()
BEGIN
	SELECT* FROM docgia where nd not in (select* from docgiacu);
END//
-- Danh sach thanh vien
CREATE PROCEDURE deleteUser (nd int)
BEGIN
	INSERT INTO DOCGIACU VALUE(nd);
END//
-- Them thanh vien
CREATE PROCEDURE insertUser (nd int, ho varchar(15), ten varchar(25), dchi varchar(100), tel varchar(15))
BEGIN
	INSERT INTO docgia VALUE(nd, ho, ten, dchi, tel);
END//
-- Cap nhat thong tin thanh vien 

CREATE PROCEDURE editUser (ndd int, ho varchar(15), ten varchar(25), dchi varchar(100), tel varchar(15))
BEGIN
	UPDATE docgia SET  ho = ho, ten = ten, dchi = dchi, tel = tel where nd = ndd;
END//
-- Danh sach tac pham

CREATE PROCEDURE selectTacpham ()
BEGIN
	SELECT* FROM tacpham where nt not in (select* from sachdaxoa);
END//
-- Danh sach muon sach
CREATE PROCEDURE selectMuon ()
BEGIN
	SELECT* FROM muon join docgia on muon.nd = docgia.nd;
END//
-- Danh sach muon sach cua thanh vien co nd = nd

CREATE PROCEDURE selectMuonWhere (ndd int)
BEGIN
	SELECT tacpham.nt, tacpham.tua, tacpham.tacgia, muon.ngaymuon, muon.hantra, muon.ngaytra FROM muon join tacpham on tacpham.nt=muon.nt WHERE nd = ndd and ngaytra is null;
END//
-- Danh sach qua han tra sach
delimiter //
CREATE PROCEDURE selectMuonHetHan ()
BEGIN
	 select docgia.nd, docgia.ho, docgia.ten, muon.nt, muon.ngaymuon, muon.hantra, muon.ngaytra  from muon join docgia on docgia.nd=muon.nd where hantra-now() < 0 and ngaytra is null order by nd;
END//
-- Muon sach

CREATE PROCEDURE MuonSach (ntt int, ndd int, hantraa date)
BEGIN
	 update tacpham set soluong = soluong-1 where nt = ntt;
     insert muon value(ntt, now(), hantraa, null, ndd);
END//

CREATE PROCEDURE TraSach (ntt int, ndd int)
BEGIN
	 update tacpham set soluong = soluong+1 where nt = ntt;
     update muon set ngaytra = now() where nt = ntt and nd = ndd;
END//

CREATE PROCEDURE selectLSMuon ()
BEGIN
	 select docgia.nd, docgia.ho, docgia.ten, muon.nt, muon.ngaymuon, muon.hantra, muon.ngaytra  from muon join docgia on docgia.nd=muon.nd order by nd;
END//

CREATE PROCEDURE insertSach (ntt int, tuaa varchar(55), tacgiaa varchar(55), soluongg int)
BEGIN
	 insert into tacpham value(ntt, tuaa, tacgiaa, soluongg);
END//

CREATE PROCEDURE editSach (ntt int, tuaa varchar(55), tacgiaa varchar(55), soluongg int)
BEGIN
	UPDATE tacpham SET  nt = ntt, tua = tuaa, tacgia = tacgiaa, soluong = soluongg where nt = ntt;
END//

CREATE PROCEDURE deleteSach (ntt int)
BEGIN
	insert into sachdaxoa value(ntt);
END//
DELIMITER ;