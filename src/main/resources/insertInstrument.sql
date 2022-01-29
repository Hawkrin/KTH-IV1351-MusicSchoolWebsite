insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Piano', '2', 'Gucci', '18000');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Guitar', '12', 'Gibson', '4000');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Guitar', '4', 'Fender', '500');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Guitar', '20', 'PRS', '3000');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Guitar', '32', 'Rickenbacker', '1200');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Maraca', '11', 'Neliblu ', '400');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Maraca', '23', 'Nino Percussion', '300');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Drums', '61', 'Tama', '3000');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Drums', '12', 'Yamaha', '4000');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Drums', '4', 'Ludwig', '1200');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Drums', '11', 'Canopus', '2300');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Synth', '17', 'Moog Music', '1400');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Synth', '5', 'Korg', '4666');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Synth', '8', 'Arturia', '1235');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Synth', '12', 'Novation', '4532');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Saxophone', '12', 'Selmer Paris', '1234');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Saxophone', '5', 'Yamaha', '4321');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Saxophone', '7', 'Keilwerth', '8000');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Accordion', '2', 'Hohner Panther', '50');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Accordion', '65', 'Rizatti Bronco', '70');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Accordion', '32', 'Roland V', '120');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Tambourine', '11', 'Meinl Percussion', '600');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Bass', '32', 'Yamaha', '2000');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Bass', '2', 'Gibson', '3000');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Bass', '5', 'Hofner', '4233');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Bass', '12', 'Schecter', '1200');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Bass', '8', 'Rickenbacker', '8000');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Trumpet', '11', 'Yamaha ', '2300');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Trumpet', '32', 'Bach Stradivarius', '1200');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Trumpet', '2', 'Getzen', '6000');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Trumpet', '5', 'Kaizer ', '1000');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Trumpet', '12', 'Mendini ', '1231');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Trumpet', '8', 'Jean Paul', '7005');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Flute', '2', 'Gemeinhardt', '1000');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Flute', '15', 'Armstrong', '1231');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Flute', '45', 'Pearl', '7005');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Microphone', '11', 'Shure', '500');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Microphone', '25', 'Rode', '800');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Microphone', '2', 'IK Multimedia', '1200');
insert into instrument_stock (instrument_type, instrument_quantity, instrument_brand, instrument_price) values ('Microphone', '15', 'Pearl', '900');

SELECT
	s.instrument_type instrument_type,
	s.instrument_brand brand,
	p.first_name,
	p.last_name,
	r.amount quantity
FROM 
	instrument_renting r
INNER JOIN instrument_stock s
	ON r.instrument_stock_id = s.instrument_stock_id
INNER JOIN student
	ON student.student_id = r.student_id
INNER JOIN person p
	ON p.person_id = student.person_id
	
	