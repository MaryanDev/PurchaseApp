use PurchaseAppDb
go

set identity_insert AspNetUsers on
insert into AspNetUsers(Id, Hometown, Email, EmailConfirmed, PasswordHash, SecurityStamp, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEndDateUtc, LockoutEnabled, AccessFailedCount, UserName)
	values
		(1, null, 'mr.maykher@mail.ru', 0, 'AIQoV0W69luR9dUfpiJbRE51UdCkioBeIxfXHUbQX46Yyd7Rw8Grpeva/iZkueaIWg==', '955e03fa-ebab-463b-b368-69e368153221', null, 0, 0, null, 0, 0, 'MaryanDev'),
		(2, null, 'm.maykher@mail.ru', 0, 'APJY0t1k6nMyzABubT8LTRzY+5FocsFAwLIKGIKD+X2it6Wtt6Ps2PkoBjkRY0hOeA==', 'ad3dcacf-cd25-40fa-a1cd-36a29853d7f5', null, 0, 0, null, 0, 0, 'Mayher')
set identity_insert AspNetUsers off

set identity_insert Budgets on
insert into Budgets (Id, UserId, Amount, [From], [To]) values (1, 2, 6909, '16/12/2015', '22/09/2016');
insert into Budgets (Id, UserId, Amount, [From], [To]) values (2, 2, 6134, '05/01/2016', '05/08/2016');
insert into Budgets (Id, UserId, Amount, [From], [To]) values (3, 1, 1079, '14/12/2015', '26/05/2016');
insert into Budgets (Id, UserId, Amount, [From], [To]) values (4, 1, 8774, '05/12/2015', '11/05/2016');
insert into Budgets (Id, UserId, Amount, [From], [To]) values (5, 1, 3640, '16/12/2015', '25/09/2016');
insert into Budgets (Id, UserId, Amount, [From], [To]) values (6, 1, 4163, '02/01/2016', '19/01/2016');
insert into Budgets (Id, UserId, Amount, [From], [To]) values (7, 1, 2522, '19/12/2015', '21/07/2016');
insert into Budgets (Id, UserId, Amount, [From], [To]) values (8, 1, 6125, '08/12/2015', '06/09/2016');
insert into Budgets (Id, UserId, Amount, [From], [To]) values (9, 2, 3787, '25/12/2015', '19/08/2016');
insert into Budgets (Id, UserId, Amount, [From], [To]) values (10, 1, 5097, '09/12/2015', '10/02/2016');
set identity_insert Budgets off

set identity_insert Categories on
insert into Categories(Id, Title)
	values
	(1, 'Food'),
	(2, 'Transport'),
	(3, 'Clothes'),
	(4, 'Accommodation'),
	(5, 'Utilities'),
	(6, 'Travelling'),
	(7, 'Entertainment'),
	(8, 'Gadgets'),
	(9, 'Other')
set identity_insert Categories off

set identity_insert Importances on
insert into Importances(Id, ImpCoef, ImpTitle)
	values
	(1, 1, 'Primary'),
	(2, 2, 'High'),
	(3, 3, 'Intermediate'),
	(4, 4, 'Low')
set identity_insert Importances off

set identity_insert Places on
insert into Places (Id, Long, Lat, Title) values (1, '120.68543', '15.48215', '19 Nelson Way');
insert into Places (Id, Long, Lat, Title) values (2, '12.77147', '49.55971', '20 Kipling Avenue');
insert into Places (Id, Long, Lat, Title) values (3, '35.09443', '31.4459', '591 Riverside Crossing');
insert into Places (Id, Long, Lat, Title) values (4, '127.10722', '42.04361', '1 Arizona Circle');
insert into Places (Id, Long, Lat, Title) values (5, '120.58174', '30.1473', '8 Schurz Crossing');
insert into Places (Id, Long, Lat, Title) values (6, '-8.5333', '42.0333', '757 Superior Trail');
insert into Places (Id, Long, Lat, Title) values (7, '34.13886', '35.46892', '8 Lakewood Gardens Terrace');
insert into Places (Id, Long, Lat, Title) values (8, '58.60444', '55.40833', '71447 Anniversary Parkway');
insert into Places (Id, Long, Lat, Title) values (9, '-88.31667', '14.93333', '35173 David Trail');
insert into Places (Id, Long, Lat, Title) values (10, '102.74417', '24.70222', '00448 Hoepker Center');
insert into Places (Id, Long, Lat, Title) values (11, '-84.66466', '9.99447', '4 Talisman Park');
insert into Places (Id, Long, Lat, Title) values (12, '-70.75401', '-13.23092', '72333 Hollow Ridge Street');
insert into Places (Id, Long, Lat, Title) values (13, '174.86019', '-36.8882', '39 Bashford Road');
insert into Places (Id, Long, Lat, Title) values (14, '112.36858', '30.85737', '33 Bellgrove Court');
insert into Places (Id, Long, Lat, Title) values (15, '14.40917', '45.34306', '98275 South Way');
insert into Places (Id, Long, Lat, Title) values (16, '8.51541', '12.43303', '02 Northview Trail');
insert into Places (Id, Long, Lat, Title) values (17, '179.31667', '-18.06667', '63 Namekagon Street');
insert into Places (Id, Long, Lat, Title) values (18, '20.59018', '49.81716', '1 Stang Street');
insert into Places (Id, Long, Lat, Title) values (19, '123.6492', '12.982', '7 Corscot Alley');
insert into Places (Id, Long, Lat, Title) values (20, '-62.09453', '-33.12745', '11496 Roxbury Avenue');
insert into Places (Id, Long, Lat, Title) values (21, '50.517', '29.5791', '1 2nd Drive');
insert into Places (Id, Long, Lat, Title) values (22, '179.35046', '63.06101', '0 Oak Valley Avenue');
insert into Places (Id, Long, Lat, Title) values (23, '-22.01667', '64.1', '024 Bunker Hill Drive');
insert into Places (Id, Long, Lat, Title) values (24, '120.33063', '37.65182', '834 Haas Drive');
insert into Places (Id, Long, Lat, Title) values (25, '122.6856', '11.3937', '0 Ronald Regan Trail');
insert into Places (Id, Long, Lat, Title) values (26, '36.01549', '50.60156', '3 School Crossing');
insert into Places (Id, Long, Lat, Title) values (27, '-86.12072', '11.92411', '2 Mccormick Pass');
insert into Places (Id, Long, Lat, Title) values (28, '33.46277', '34.94653', '8791 Reinke Court');
insert into Places (Id, Long, Lat, Title) values (29, '108.2926', '-7.8073', '788 Helena Circle');
insert into Places (Id, Long, Lat, Title) values (30, '-97.2613', '37.6379', '237 Fair Oaks Center');
insert into Places (Id, Long, Lat, Title) values (31, '111.6124', '-7.1354', '2367 Coolidge Alley');
insert into Places (Id, Long, Lat, Title) values (32, '-77.62667', '-6.09917', '1680 Continental Park');
insert into Places (Id, Long, Lat, Title) values (33, '13.5036', '59.3793', '4 Maple Wood Hill');
insert into Places (Id, Long, Lat, Title) values (34, '25.55', '-25.41667', '38 Lighthouse Bay Street');
insert into Places (Id, Long, Lat, Title) values (35, '-75.05306', '3.15333', '07213 Aberg Drive');
insert into Places (Id, Long, Lat, Title) values (36, '116.59925', '25.1293', '123 Debs Way');
insert into Places (Id, Long, Lat, Title) values (37, '-76.62587', '7.88299', '62028 Lakewood Gardens Parkway');
insert into Places (Id, Long, Lat, Title) values (38, '19.95864', '49.91437', '7093 Parkside Street');
insert into Places (Id, Long, Lat, Title) values (39, '118.455', '35.54278', '25 Marquette Court');
insert into Places (Id, Long, Lat, Title) values (40, '61.4586', '54.9163', '5918 Lerdahl Court');
insert into Places (Id, Long, Lat, Title) values (41, '90.20535', '51.01398', '66611 7th Street');
insert into Places (Id, Long, Lat, Title) values (42, '90.16943', '24.31988', '7 Carberry Street');
insert into Places (Id, Long, Lat, Title) values (43, '116.28739', '23.6396', '28358 Waxwing Parkway');
insert into Places (Id, Long, Lat, Title) values (44, '-10.6', '9.01667', '9 Daystar Street');
insert into Places (Id, Long, Lat, Title) values (45, '116.99111', '35.59667', '79 Cordelia Terrace');
insert into Places (Id, Long, Lat, Title) values (46, '80.58059', '29.29842', '2882 Fisk Hill');
insert into Places (Id, Long, Lat, Title) values (47, '-8.5833', '42.05', '55516 Magdeline Terrace');
insert into Places (Id, Long, Lat, Title) values (48, '-82.6875', '22.92639', '71 Sloan Lane');
insert into Places (Id, Long, Lat, Title) values (49, '42.73333', '18.3', '9 Morningstar Way');
insert into Places (Id, Long, Lat, Title) values (50, '102.241', '2.2115', '9 Merry Terrace');
set identity_insert Places off

set identity_insert Purchases on
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (1, 'Electronics', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 569, 1, 22, '20/05/2016', 8, 3, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (2, 'Computers', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 416, 1, 41, '13/01/2016', 4, 1, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (3, 'Electronics', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 852, 1, 48, '26/10/2016', 2, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (4, 'Books', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 270, 2, 41, '07/06/2016', 2, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (5, 'Computers', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 223, 1, 47, '03/02/2016', 3, 3, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (6, 'Grocery', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 330, 1, 20, '18/09/2016', 4, 4, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (7, 'Games', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 270, 1, 13, '28/03/2016', 5, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (8, 'Industrial', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 732, 1, 21, '04/04/2016', 5, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (9, 'Health', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 795, 2, 37, '28/06/2016', 1, 2, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (10, 'Grocery', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 708, 2, 4, '26/11/2016', 9, 3, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (11, 'Industrial', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 937, 2, 21, '19/03/2016', 4, 2, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (12, 'Books', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 275, 1, 38, '24/06/2016', 8, 3, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (13, 'Grocery', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 872, 2, 33, '12/06/2016', 4, 1, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (14, 'Computers', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 147, 1, 16, '03/06/2016', 9, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (15, 'Electronics', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', 981, 1, 35, '18/12/2015', 2, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (16, 'Books', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 933, 1, 40, '17/06/2016', 1, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (17, 'Jewelery', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 466, 2, 40, '18/03/2016', 7, 3, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (18, 'Electronics', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 405, 2, 16, '18/03/2016', 3, 3, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (19, 'Games', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 502, 2, 27, '02/03/2016', 9, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (20, 'Beauty', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 196, 1, 30, '03/01/2016', 4, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (21, 'Outdoors', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 346, 2, 47, '22/09/2016', 2, 4, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (22, 'Kids', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 334, 2, 34, '05/10/2016', 8, 1, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (23, 'Games', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 194, 1, 4, '29/03/2016', 4, 2, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (24, 'Baby', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 231, 2, 42, '24/01/2016', 7, 3, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (25, 'Music', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 693, 2, 15, '08/06/2016', 1, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (26, 'Toys', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 251, 2, 45, '23/02/2016', 9, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (27, 'Outdoors', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 165, 1, 27, '27/11/2016', 4, 3, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (28, 'Games', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 784, 1, 47, '13/01/2016', 3, 4, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (29, 'Grocery', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 454, 1, 2, '11/06/2016', 3, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (30, 'Sports', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 228, 1, 17, '31/03/2016', 3, 2, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (31, 'Clothing', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 410, 2, 34, '22/04/2016', 7, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (32, 'Computers', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 462, 2, 47, '04/05/2016', 9, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (33, 'Shoes', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 920, 1, 5, '31/10/2016', 9, 1, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (34, 'Grocery', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 559, 2, 39, '26/11/2016', 2, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (35, 'Sports', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 583, 2, 47, '04/04/2016', 9, 1, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (36, 'Sports', 'Fusce consequat. Nulla nisl. Nunc nisl.', 366, 1, 23, '12/05/2016', 3, 3, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (37, 'Clothing', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 902, 2, 25, '15/07/2016', 8, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (38, 'Games', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 105, 1, 12, '03/02/2016', 9, 2, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (39, 'Kids', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 36, 1, 31, '01/03/2016', 8, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (40, 'Clothing', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 863, 1, 3, '28/10/2016', 2, 3, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (41, 'Kids', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 768, 2, 42, '29/07/2016', 7, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (42, 'Jewelery', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 566, 2, 12, '14/11/2016', 9, 1, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (43, 'Kids', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 149, 1, 41, '30/09/2016', 5, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (44, 'Sports', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 402, 1, 17, '21/10/2016', 1, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (45, 'Computers', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 992, 2, 24, '12/08/2016', 2, 2, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (46, 'Books', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 740, 2, 42, '18/11/2016', 9, 3, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (47, 'Computers', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 909, 2, 19, '11/03/2016', 7, 3, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (48, 'Books', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 922, 1, 39, '02/06/2016', 8, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (49, 'Toys', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 549, 2, 24, '21/12/2015', 7, 4, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (50, 'Games', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', 767, 2, 16, '12/03/2016', 7, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (51, 'Beauty', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 846, 2, 49, '21/12/2015', 3, 2, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (52, 'Shoes', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 497, 2, 1, '31/12/2015', 8, 4, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (53, 'Games', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 692, 1, 35, '01/08/2016', 4, 1, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (54, 'Sports', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 744, 2, 34, '16/10/2016', 6, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (55, 'Grocery', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 356, 1, 22, '02/11/2016', 9, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (56, 'Baby', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 277, 2, 48, '27/11/2016', 8, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (57, 'Sports', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 878, 2, 10, '27/08/2016', 8, 1, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (58, 'Books', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 318, 1, 19, '17/11/2016', 5, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (59, 'Movies', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 548, 1, 26, '09/02/2016', 7, 3, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (60, 'Grocery', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 213, 1, 44, '23/12/2015', 6, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (61, 'Home', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 802, 2, 19, '30/08/2016', 4, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (62, 'Home', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 520, 1, 18, '13/01/2016', 3, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (63, 'Toys', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 619, 2, 22, '30/06/2016', 5, 3, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (64, 'Automotive', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 402, 1, 10, '13/05/2016', 6, 1, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (65, 'Shoes', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 860, 1, 15, '30/03/2016', 4, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (66, 'Beauty', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 899, 2, 22, '16/08/2016', 7, 2, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (67, 'Automotive', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 811, 2, 9, '19/04/2016', 4, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (68, 'Games', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 62, 1, 36, '15/04/2016', 5, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (69, 'Shoes', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 408, 2, 32, '18/07/2016', 1, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (70, 'Kids', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 143, 2, 45, '04/01/2016', 6, 1, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (71, 'Outdoors', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 902, 1, 12, '06/01/2016', 5, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (72, 'Beauty', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 109, 1, 2, '01/04/2016', 1, 3, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (73, 'Home', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 541, 1, 6, '13/08/2016', 6, 4, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (74, 'Toys', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 83, 1, 8, '06/12/2015', 3, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (75, 'Shoes', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 134, 2, 1, '01/06/2016', 2, 2, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (76, 'Electronics', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 242, 1, 34, '06/10/2016', 7, 4, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (77, 'Electronics', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 592, 2, 34, '12/03/2016', 5, 4, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (78, 'Garden', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 790, 2, 22, '16/11/2016', 9, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (79, 'Automotive', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 256, 2, 8, '28/04/2016', 1, 3, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (80, 'Toys', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 301, 1, 22, '10/01/2016', 7, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (81, 'Grocery', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 885, 1, 24, '26/01/2016', 5, 3, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (82, 'Tools', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 994, 1, 27, '07/01/2016', 4, 3, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (83, 'Beauty', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 122, 2, 12, '12/07/2016', 1, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (84, 'Tools', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 115, 1, 23, '31/10/2016', 8, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (85, 'Health', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 756, 1, 29, '19/08/2016', 9, 1, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (86, 'Kids', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 754, 2, 31, '06/03/2016', 9, 1, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (87, 'Books', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 144, 1, 24, '31/10/2016', 5, 3, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (88, 'Health', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 344, 2, 9, '27/05/2016', 4, 3, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (89, 'Computers', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 924, 2, 31, '30/08/2016', 3, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (90, 'Jewelery', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 65, 2, 43, '25/01/2016', 2, 2, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (91, 'Sports', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 135, 2, 12, '29/02/2016', 9, 4, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (92, 'Baby', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 513, 1, 6, '12/04/2016', 7, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (93, 'Kids', 'Fusce consequat. Nulla nisl. Nunc nisl.', 617, 2, 3, '03/02/2016', 7, 4, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (94, 'Kids', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 623, 2, 20, '15/10/2016', 7, 3, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (95, 'Outdoors', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 223, 1, 25, '14/02/2016', 7, 2, 0);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (96, 'Garden', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 369, 1, 46, '03/11/2016', 2, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (97, 'Industrial', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 11, 1, 23, '13/06/2016', 4, 3, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (98, 'Electronics', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 339, 2, 38, '25/10/2016', 1, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (99, 'Computers', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 718, 2, 41, '01/09/2016', 5, 1, 1);
insert into Purchases (Id, [Title], [Description], [Price], UserId, PlaceId, [Date], CategoryId, ImportanceId, IsPlanned) values (100, 'Beauty', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 979, 2, 38, '14/07/2016', 2, 2, 0);
set identity_insert Purchases off