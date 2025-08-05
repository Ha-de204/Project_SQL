create database data_mart
use data_mart

create table weekly_sales (
     week_date varchar(7),
	 region varchar(13),
	 platform varchar(7),
	 segment varchar(4),
	 customer_type varchar(8),
	 transactions int,
	 sales int
)

insert into weekly_sales (week_date, region, platform, segment, customer_type, transactions, sales)
values 
       ('26/3/18', 'SOUTH AMERICA', 'Shopify', 'C4', 'Existing', '6', '1172'),
  ('26/3/18', 'EUROPE', 'Retail', 'F3', 'Existing', '14907', '949673'),
  ('26/3/18', 'USA', 'Retail', 'C2', 'Existing', '31824', '1701846'),
  ('26/3/18', 'CANADA', 'Shopify', 'F3', 'New', '25', '4230'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'C3', 'Existing', '1161', '57800'),
  ('26/3/18', 'ASIA', 'Retail', 'F2', 'Existing', '171020', '8726454'),
  ('26/3/18', 'USA', 'Shopify', 'C1', 'New', '120', '16207'),
  ('26/3/18', 'USA', 'Retail', 'C4', 'New', '15029', '571887'),
  ('26/3/18', 'AFRICA', 'Shopify', 'C4', 'Existing', '217', '44269'),
  ('26/3/18', 'ASIA', 'Shopify', 'null', 'New', '182', '27552'),
  ('26/3/18', 'EUROPE', 'Shopify', 'F1', 'Existing', '95', '22017'),
  ('26/3/18', 'ASIA', 'Shopify', 'C4', 'Existing', '152', '25673'),
  ('26/3/18', 'EUROPE', 'Shopify', 'C3', 'Existing', '97', '28717'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'F2', 'Existing', '3845', '787254'),
  ('26/3/18', 'USA', 'Retail', 'F2', 'Existing', '83546', '5453458'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'F2', 'Existing', '1077', '51682'),
  ('26/3/18', 'CANADA', 'Retail', 'C1', 'New', '32858', '906090'),
  ('26/3/18', 'SOUTH AMERICA', 'Shopify', 'C1', 'Existing', '43', '8662'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'F3', 'New', '141', '20603'),
  ('26/3/18', 'USA', 'Shopify', 'C4', 'Existing', '88', '18197'),
  ('26/3/18', 'OCEANIA', 'Retail', 'F2', 'Existing', '291062', '16487477'),
  ('26/3/18', 'EUROPE', 'Shopify', 'C2', 'Existing', '98', '24809'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'F1', 'Existing', '570', '29525'),
  ('26/3/18', 'AFRICA', 'Shopify', 'F3', 'New', '83', '14300'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'C1', 'Existing', '1762', '310853'),
  ('26/3/18', 'AFRICA', 'Retail', 'null', 'Guest', '1620731', '45998717'),
  ('26/3/18', 'USA', 'Shopify', 'F2', 'Existing', '1455', '303272'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'C4', 'Existing', '356', '21366'),
  ('26/3/18', 'USA', 'Retail', 'null', 'New', '22187', '997407'),
  ('26/3/18', 'CANADA', 'Shopify', 'C2', 'Existing', '316', '56407'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'C4', 'New', '298', '12440'),
  ('26/3/18', 'SOUTH AMERICA', 'Shopify', 'null', 'New', '38', '7086'),
  ('26/3/18', 'OCEANIA', 'Retail', 'null', 'Guest', '2443046', '63275082'),
  ('26/3/18', 'EUROPE', 'Shopify', 'null', 'Guest', '144', '32217'),
  ('26/3/18', 'CANADA', 'Retail', 'null', 'New', '16826', '695014'),
  ('26/3/18', 'CANADA', 'Shopify', 'C2', 'New', '68', '9329'),
  ('26/3/18', 'AFRICA', 'Retail', 'F2', 'New', '61001', '2316915'),
  ('26/3/18', 'AFRICA', 'Shopify', 'C1', 'New', '187', '23524'),
  ('26/3/18', 'CANADA', 'Shopify', 'C4', 'Existing', '42', '7470'),
  ('26/3/18', 'AFRICA', 'Shopify', 'null', 'Existing', '193', '34604'),
  ('26/3/18', 'AFRICA', 'Retail', 'F3', 'Existing', '308162', '18631509'),
  ('26/3/18', 'CANADA', 'Retail', 'F2', 'Existing', '52112', '3064219'),
  ('26/3/18', 'ASIA', 'Retail', 'F2', 'New', '63461', '2065417'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'C2', 'Existing', '2696', '523000'),
  ('26/3/18', 'SOUTH AMERICA', 'Shopify', 'null', 'Guest', '780', '156505'),
  ('26/3/18', 'AFRICA', 'Shopify', 'C1', 'Existing', '967', '166020'),
  ('26/3/18', 'CANADA', 'Retail', 'F3', 'Existing', '74271', '4478715'),
  ('26/3/18', 'ASIA', 'Shopify', 'C3', 'New', '157', '24476'),
  ('26/3/18', 'ASIA', 'Retail', 'C1', 'New', '116057', '2682773'),
  ('26/3/18', 'EUROPE', 'Shopify', 'C2', 'New', '9', '2183'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'null', 'Existing', '512', '16790'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'F1', 'New', '291', '12635'),
  ('26/3/18', 'AFRICA', 'Shopify', 'C4', 'New', '38', '6850'),
  ('26/3/18', 'USA', 'Shopify', 'C1', 'Existing', '552', '105019'),
  ('26/3/18', 'SOUTH AMERICA', 'Shopify', 'null', 'Existing', '15', '3587'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'C2', 'New', '444', '66813'),
  ('26/3/18', 'USA', 'Shopify', 'F1', 'New', '96', '15446'),
  ('26/3/18', 'CANADA', 'Retail', 'C2', 'Existing', '16774', '811158'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'C1', 'Existing', '2036', '56134'),
  ('26/3/18', 'EUROPE', 'Retail', 'F2', 'Existing', '11884', '763772'),
  ('26/3/18', 'USA', 'Shopify', 'F3', 'New', '37', '5422'),
  ('26/3/18', 'USA', 'Retail', 'null', 'Existing', '9439', '496666'),
  ('26/3/18', 'EUROPE', 'Retail', 'F3', 'New', '1524', '64646'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'null', 'Existing', '400', '72975'),
  ('26/3/18', 'CANADA', 'Retail', 'C3', 'New', '26410', '985673'),
  ('26/3/18', 'EUROPE', 'Shopify', 'C4', 'Existing', '4', '782'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'null', 'Guest', '397737', '15517900'),
  ('26/3/18', 'USA', 'Retail', 'F3', 'New', '25195', '1040046'),
  ('26/3/18', 'ASIA', 'Shopify', 'F2', 'New', '149', '25142'),
  ('26/3/18', 'AFRICA', 'Retail', 'C1', 'Existing', '149334', '6070949'),
  ('26/3/18', 'CANADA', 'Shopify', 'C4', 'New', '7', '1154'),
  ('26/3/18', 'ASIA', 'Shopify', 'C1', 'New', '186', '23223'),
  ('26/3/18', 'ASIA', 'Shopify', 'F2', 'Existing', '1364', '260211'),
  ('26/3/18', 'OCEANIA', 'Retail', 'C4', 'New', '56906', '1878628'),
  ('26/3/18', 'USA', 'Shopify', 'C3', 'New', '119', '21902'),
  ('26/3/18', 'OCEANIA', 'Retail', 'C4', 'Existing', '112096', '6020419'),
  ('26/3/18', 'CANADA', 'Shopify', 'C1', 'Existing', '278', '47294'),
  ('26/3/18', 'SOUTH AMERICA', 'Shopify', 'F1', 'Existing', '21', '5419'),
  ('26/3/18', 'USA', 'Retail', 'C4', 'Existing', '28446', '1673032'),
  ('26/3/18', 'USA', 'Shopify', 'F2', 'New', '103', '16153'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'C2', 'Existing', '573', '24512'),
  ('26/3/18', 'AFRICA', 'Shopify', 'C3', 'Existing', '1452', '299943'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'C1', 'New', '340', '44597'),
  ('26/3/18', 'EUROPE', 'Shopify', 'F2', 'New', '2', '403'),
  ('26/3/18', 'CANADA', 'Retail', 'F3', 'New', '18717', '708935'),
  ('26/3/18', 'CANADA', 'Shopify', 'null', 'Existing', '48', '8653'),
  ('26/3/18', 'ASIA', 'Shopify', 'C3', 'Existing', '1003', '185209'),
  ('26/3/18', 'AFRICA', 'Retail', 'C4', 'New', '39979', '1440641'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'F1', 'New', '274', '41866'),
  ('26/3/18', 'AFRICA', 'Shopify', 'C2', 'Existing', '1260', '244860'),
  ('26/3/18', 'ASIA', 'Shopify', 'F3', 'Existing', '842', '168280'),
  ('26/3/18', 'USA', 'Shopify', 'C3', 'Existing', '926', '195225'),
  ('26/3/18', 'USA', 'Retail', 'null', 'Guest', '575472', '17610630'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'null', 'Guest', '5272', '924513'),
  ('26/3/18', 'AFRICA', 'Shopify', 'C2', 'New', '199', '30367'),
  ('26/3/18', 'OCEANIA', 'Retail', 'C2', 'Existing', '119083', '5116495'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'C2', 'New', '663', '22819'),
  ('26/3/18', 'SOUTH AMERICA', 'Shopify', 'F3', 'New', '4', '730'),
  ('26/3/18', 'AFRICA', 'Retail', 'C2', 'New', '51075', '1692383'),
  ('26/3/18', 'AFRICA', 'Retail', 'F2', 'Existing', '221292', '12966045'),
  ('26/3/18', 'CANADA', 'Retail', 'C4', 'Existing', '20888', '1126811'),
  ('26/3/18', 'USA', 'Retail', 'F3', 'Existing', '111812', '7485775'),
  ('26/3/18', 'SOUTH AMERICA', 'Shopify', 'F3', 'Existing', '16', '2729'),
  ('26/3/18', 'ASIA', 'Retail', 'null', 'Existing', '26183', '1122918'),
  ('26/3/18', 'ASIA', 'Shopify', 'F1', 'Existing', '1059', '183903'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'C4', 'New', '63', '9124'),
  ('26/3/18', 'EUROPE', 'Shopify', 'C1', 'Existing', '72', '12931'),
  ('26/3/18', 'OCEANIA', 'Retail', 'null', 'New', '86622', '3308024'),
  ('26/3/18', 'AFRICA', 'Retail', 'C4', 'Existing', '83592', '4672749'),
  ('26/3/18', 'ASIA', 'Retail', 'null', 'New', '66330', '2326726'),
  ('26/3/18', 'AFRICA', 'Shopify', 'null', 'New', '205', '33404'),
  ('26/3/18', 'ASIA', 'Shopify', 'null', 'Existing', '149', '26394'),
  ('26/3/18', 'EUROPE', 'Shopify', 'F2', 'Existing', '119', '30198'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'C3', 'New', '359', '60871'),
  ('26/3/18', 'AFRICA', 'Shopify', 'F1', 'New', '110', '16693'),
  ('26/3/18', 'SOUTH AMERICA', 'Shopify', 'C2', 'Existing', '84', '16993'),
  ('26/3/18', 'USA', 'Shopify', 'C2', 'New', '143', '20877'),
  ('26/3/18', 'OCEANIA', 'Retail', 'C1', 'Existing', '201886', '8019043'),
  ('26/3/18', 'CANADA', 'Shopify', 'F1', 'New', '43', '5472'),
  ('26/3/18', 'EUROPE', 'Retail', 'F1', 'Existing', '5721', '356973'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'F2', 'New', '517', '20746'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'C3', 'Existing', '2494', '510178'),
  ('26/3/18', 'OCEANIA', 'Retail', 'C1', 'New', '146324', '3700047'),
  ('26/3/18', 'EUROPE', 'Retail', 'F2', 'New', '1501', '69581'),
  ('26/3/18', 'ASIA', 'Retail', 'F1', 'Existing', '82004', '4158055'),
  ('26/3/18', 'CANADA', 'Retail', 'F1', 'Existing', '22675', '1329773'),
  ('26/3/18', 'USA', 'Shopify', 'null', 'Guest', '1304', '243347'),
  ('26/3/18', 'OCEANIA', 'Retail', 'C3', 'Existing', '263034', '13862433'),
  ('26/3/18', 'USA', 'Retail', 'C1', 'Existing', '47218', '2219869'),
  ('26/3/18', 'AFRICA', 'Retail', 'null', 'Existing', '28284', '1340918'),
  ('26/3/18', 'CANADA', 'Retail', 'C3', 'Existing', '47500', '2602065'),
  ('26/3/18', 'EUROPE', 'Shopify', 'null', 'New', '5', '2072'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'F1', 'Existing', '2600', '507428'),
  ('26/3/18', 'OCEANIA', 'Retail', 'F3', 'New', '102905', '3661289'),
  ('26/3/18', 'ASIA', 'Shopify', 'F1', 'New', '127', '18195'),
  ('26/3/18', 'USA', 'Shopify', 'null', 'Existing', '91', '18246'),
  ('26/3/18', 'EUROPE', 'Retail', 'C1', 'New', '4376', '138612'),
  ('26/3/18', 'ASIA', 'Shopify', 'C1', 'Existing', '685', '110402'),
  ('26/3/18', 'OCEANIA', 'Retail', 'C2', 'New', '89801', '2640811'),
  ('26/3/18', 'USA', 'Retail', 'F1', 'New', '10708', '457257'),
  ('26/3/18', 'AFRICA', 'Retail', 'F3', 'New', '61622', '2388435'),
  ('26/3/18', 'ASIA', 'Retail', 'C3', 'New', '107881', '3417717'),
  ('26/3/18', 'ASIA', 'Shopify', 'C2', 'New', '214', '28212'),
  ('26/3/18', 'AFRICA', 'Shopify', 'F1', 'Existing', '1447', '277453'),
  ('26/3/18', 'ASIA', 'Retail', 'F3', 'Existing', '306138', '16007398'),
  ('26/3/18', 'OCEANIA', 'Retail', 'F1', 'New', '39795', '1424560'),
  ('26/3/18', 'ASIA', 'Retail', 'C4', 'Existing', '81493', '3890763'),
  ('26/3/18', 'EUROPE', 'Retail', 'C3', 'Existing', '11478', '661150'),
  ('26/3/18', 'ASIA', 'Shopify', 'C2', 'Existing', '1071', '190895'),
  ('26/3/18', 'USA', 'Retail', 'C1', 'New', '34282', '999080'),
  ('26/3/18', 'SOUTH AMERICA', 'Shopify', 'C4', 'New', '1', '100'),
  ('26/3/18', 'EUROPE', 'Shopify', 'null', 'Existing', '13', '3558'),
  ('26/3/18', 'EUROPE', 'Retail', 'C4', 'Existing', '3019', '172470'),
  ('26/3/18', 'CANADA', 'Retail', 'C4', 'New', '12009', '414466'),
  ('26/3/18', 'AFRICA', 'Shopify', 'null', 'Guest', '2267', '407389'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'null', 'New', '379', '59234'),
  ('26/3/18', 'OCEANIA', 'Retail', 'null', 'Existing', '37990', '1772385'),
  ('26/3/18', 'AFRICA', 'Retail', 'C1', 'New', '91097', '2428945'),
  ('26/3/18', 'CANADA', 'Retail', 'C2', 'New', '13354', '433400'),
  ('26/3/18', 'EUROPE', 'Retail', 'null', 'Existing', '2195', '105791'),
  ('26/3/18', 'CANADA', 'Shopify', 'F2', 'Existing', '630', '124933'),
  ('26/3/18', 'AFRICA', 'Shopify', 'F3', 'Existing', '1264', '273302'),
  ('26/3/18', 'CANADA', 'Shopify', 'C3', 'Existing', '367', '70305'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'F3', 'Existing', '2221', '463292'),
  ('26/3/18', 'CANADA', 'Shopify', 'F2', 'New', '47', '6752'),
  ('26/3/18', 'USA', 'Shopify', 'C2', 'Existing', '851', '172745'),
  ('26/3/18', 'EUROPE', 'Retail', 'C3', 'New', '3358', '138247'),
  ('26/3/18', 'ASIA', 'Retail', 'C2', 'Existing', '91600', '3725387'),
  ('26/3/18', 'OCEANIA', 'Retail', 'C3', 'New', '134668', '4641508'),
  ('26/3/18', 'EUROPE', 'Shopify', 'C3', 'New', '7', '1219'),
  ('26/3/18', 'CANADA', 'Shopify', 'null', 'Guest', '619', '103774'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'C1', 'New', '1887', '43220'),
  ('26/3/18', 'EUROPE', 'Retail', 'C2', 'New', '2615', '96481'),
  ('26/3/18', 'EUROPE', 'Shopify', 'C1', 'New', '10', '3616'),
  ('26/3/18', 'AFRICA', 'Shopify', 'F2', 'Existing', '2405', '486568'),
  ('26/3/18', 'ASIA', 'Retail', 'null', 'Guest', '1977942', '48209562'),
  ('26/3/18', 'CANADA', 'Shopify', 'F3', 'Existing', '329', '66706'),
  ('26/3/18', 'EUROPE', 'Retail', 'C1', 'Existing', '12919', '614397'),
  ('26/3/18', 'AFRICA', 'Shopify', 'C3', 'New', '184', '29626'),
  ('26/3/18', 'ASIA', 'Retail', 'C1', 'Existing', '144847', '5108834'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'F3', 'Existing', '1154', '59690'),
  ('26/3/18', 'EUROPE', 'Retail', 'null', 'New', '3240', '144031'),
  ('26/3/18', 'ASIA', 'Retail', 'C4', 'New', '47300', '1431441'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'F3', 'New', '438', '15877'),
  ('26/3/18', 'EUROPE', 'Shopify', 'F3', 'Existing', '77', '24767'),
  ('26/3/18', 'CANADA', 'Retail', 'F1', 'New', '7316', '281080'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'null', 'New', '2138', '66505'),
  ('26/3/18', 'SOUTH AMERICA', 'Retail', 'C3', 'New', '1018', '40430'),
  ('26/3/18', 'OCEANIA', 'Shopify', 'F2', 'New', '326', '55808'),
  ('26/3/18', 'SOUTH AMERICA', 'Shopify', 'F2', 'New', '6', '873'),
  ('26/3/18', 'ASIA', 'Retail', 'F1', 'New', '30044', '1011432'),
  ('26/3/18', 'OCEANIA', 'Retail', 'F3', 'Existing', '433305', '25388649'),
  ('26/3/18', 'AFRICA', 'Shopify', 'F2', 'New', '186', '29999'),
  ('26/3/18', 'CANADA', 'Retail', 'null', 'Guest', '456449', '12133134'),
  ('26/3/18', 'USA', 'Shopify', 'F3', 'Existing', '752', '168817'),
  ('26/3/18', 'CANADA', 'Retail', 'null', 'Existing', '6938', '350417'),
  ('26/3/18', 'CANADA', 'Shopify', 'F1', 'Existing', '371', '68811'),
  ('26/3/18', 'AFRICA', 'Retail', 'F1', 'Existing', '85585', '5026054'),
  ('26/3/18', 'ASIA', 'Retail', 'C3', 'Existing', '187742', '8967057'),
  ('26/3/18', 'ASIA', 'Shopify', 'null', 'Guest', '2091', '336688'),
  ('26/3/18', 'SOUTH AMERICA', 'Shopify', 'C3', 'Existing', '54', '12457'),
  ('26/3/18', 'AFRICA', 'Retail', 'C2', 'Existing', '82495', '3886146'),
  ('26/3/18', 'EUROPE', 'Shopify', 'F1', 'New', '6', '1402'),
  ('26/3/18', 'ASIA', 'Retail', 'C2', 'New', '72058', '2008197'),
  ('26/3/18', 'USA', 'Retail', 'C2', 'New', '22889', '833006'),
  ('26/3/18', 'AFRICA', 'Retail', 'null', 'New', '61875', '2567272'),
  ('26/3/18', 'USA', 'Shopify', 'F1', 'Existing', '980', '199685'),
  ('26/3/18', 'SOUTH AMERICA', 'Shopify', 'F1', 'New', '3', '677'),
  ('26/3/18', 'ASIA', 'Retail', 'F3', 'New', '81842', '2673553'),
  ('26/3/18', 'CANADA', 'Shopify', 'C3', 'New', '48', '7672'),
  ('26/3/18', 'EUROPE', 'Shopify', 'F3', 'New', '2', '300'),
  ('26/3/18', 'USA', 'Retail', 'C3', 'New', '39356', '1617709'),
  ('26/3/18', 'AFRICA', 'Retail', 'C3', 'New', '98342', '3706066'),
  ('26/3/18', 'USA', 'Shopify', 'C4', 'New', '16', '2784'),
  ('26/3/18', 'USA', 'Retail', 'F2', 'New', '25665', '1064172'),
  ('26/3/18', 'EUROPE', 'Retail', 'C4', 'New', '883', '33523'),
  ('26/3/18', 'AFRICA', 'Retail', 'C3', 'Existing', '218516', '12083475');

------------------------------------------------------------------------------------------------
-- Truy van
-- I. Data Cleaning

create table clean_weekly_sales (
    week_date date,
    week_number int,
    month_number int,
    calendar_year int,
    region varchar(13),
    platform varchar(7),
    segment varchar(4),
    age_band varchar(20),
    demographic varchar(20),
    customer_type varchar(8),
    transactions int,
    sales int,
    avg_transaction decimal(10,2)
);


insert into clean_weekly_sales
select 
    
    try_convert(date, week_date, 3) as week_date,

    datediff(week, datefromparts(year(try_convert(date, week_date, 3)), 1, 1), try_convert(date, week_date, 3)) + 1 as week_number,

    month(try_convert(date, week_date, 3)) as month_number,

    year(try_convert(date, week_date, 3)) as calendar_year,

    region,
    platform,
    segment,
   
    case 
        when segment is null or segment = 'unknown' then 'unknown'
        when right(segment, 1) = '1' then 'young adults'
        when right(segment, 1) = '2' then 'middle aged'
        when right(segment, 1) in ('3', '4') then 'retirees'
        else 'unknown'
    end as age_band,

    case 
        when segment is null or segment = 'unknown' then 'unknown'
        when left(segment, 1) = 'c' then 'couples'
        when left(segment, 1) = 'f' then 'families'
        else 'unknown'
    end as demographic,

    customer_type,
    transactions,
    sales,

    round(cast(sales as float) / nullif(transactions, 0), 2) as avg_transaction

from weekly_sales;

-- II. Data Explration
-- 1. What day of the week is used for each week_date value?

select week_date,
       datename(weekday, week_date) as weekday_name
from clean_weekly_sales
group by week_date
order by week_date;

-- 2. What range of week numbers are missing from the dataset?

with all_weeks as(
     select top 53 row_number() over (order by (select null)) as week_number
	 from master.dbo.spt_values
),
existing_weeks as (
     select distinct week_number 
	 from  clean_weekly_sales
)

select aw.week_number
from all_weeks aw
left join existing_weeks ew on aw.week_number = ew.week_number
where ew.week_number is null
order by aw.week_number;

-- 3. How many total transactions were there for each year in the dataset?

--select * from clean_weekly_sales

select calendar_year, sum(transactions) as total_trans_per_year
from clean_weekly_sales
group by calendar_year
order by calendar_year;

-- 4. What is the total sales for each region for each month?

select region, month_number as month, calendar_year as year,
       sum(sales) as total_sales
from clean_weekly_sales
group by region,
         month_number,
		 calendar_year
order by region,
         calendar_year,
         month_number;

-- 5. What is the total count of transactions for each platform

select platform, sum(transactions) as total_trans
from clean_weekly_sales
group by platform
order by platform;

-- 6. What is the percentage of sales for Retail vs Shopify for each month?

with sales_for_platform as (
     select month_number as month, calendar_year as year, 
	        sum (case when platform = 'Retail' then cast(sales as bigint) else 0 end) as num_sales_for_retail,
			sum (case when platform = 'Shopify' then cast(sales as bigint) else 0 end) as num_sales_for_shopify
	from clean_weekly_sales
    group by month_number,
	         calendar_year
)

select month, year,
       cast(round(num_sales_for_retail*100.0 / (num_sales_for_retail + num_sales_for_shopify), 2) as decimal(10,2)) as pct_retail,
	   cast(round(num_sales_for_shopify*100.0 / (num_sales_for_retail + num_sales_for_shopify), 2) as decimal(10,2)) as pct_shopify
from sales_for_platform

order by year,
         month;

-- 7. What is the percentage of sales by demographic for each year in the dataset?

with sales_by_demographic as( 
     select calendar_year as year, 
            sum(case when demographic = 'families' then cast(sales as bigint) else 0 end) as num_sales_for_family,
			sum(case when demographic = 'couples' then cast(sales as bigint) else 0 end) as num_sales_for_couples,
			sum(case when demographic = 'unknown' then cast(sales as bigint) else 0 end) as num_sales_for_unknown
     from clean_weekly_sales
	 group by calendar_year
)

select year,
       cast(round(num_sales_for_family * 100.0 / (num_sales_for_family + num_sales_for_couples + num_sales_for_unknown), 2) as decimal(10, 2)) as pct_family,
	   cast(round(num_sales_for_couples * 100.0 / (num_sales_for_family + num_sales_for_couples + num_sales_for_unknown), 2) as decimal(10, 2)) as pct_couple,
	   cast(round(num_sales_for_unknown * 100.0 / (num_sales_for_family + num_sales_for_couples + num_sales_for_unknown), 2) as decimal(10, 2)) as pct_unknown
from sales_by_demographic
order by year;


-- 8. Which age_band and demographic values contribute the most to Retail sales?

select top 1 age_band, demographic, sum(cast(sales as bigint)) as total_sales
from clean_weekly_sales
where platform = 'Retail'
group by age_band, demographic
order by total_sales desc;


-- 9. Can we use the avg_transaction column to find the average transaction size for each year for Retail vs Shopify? If not - how would you calculate it instead?

-- khong nen dung truc tiep do cot avg_transaction tinh tb hang tuan, chu kong phai toan bo nam. Vi vay lay tb cua tb se 
-- khong chinh xac tru khi cac tuan cung so luong giao dich

-- cach tinh dung: tong sales / tong giao dich theo tung nam va platform

select platform, calendar_year,
      cast(round(sum(cast(sales as bigint))*1.0 / nullif(sum(cast(transactions as bigint)), 0), 2) as decimal(10, 2)) as avg_transaction_size
from clean_weekly_sales
group by platform, calendar_year
order by calendar_year, platform;
     
-- III. Before & After Analysis
-- 1. What is the total sales for the 4 weeks before and after 2020-06-15? What is the growth or reduction rate in actual values and percentage of sales?

select sum(case when week_date between '2020-06-15'and dateadd(week, 4, '2020-06-15') then cast(sales as bigint) else 0 end) as total_sales_4_week_after,
       sum(case when week_date between dateadd(week, -4, '2020-06-15') and dateadd(day, -1,'2020-06-15') then cast(sales as bigint) else 0 end) as total_sales_4_week_before
from clean_weekly_sales; 

/*
select sales,  week_date
from clean_weekly_sales
where year(week_date) = 2020
order by week_date
*/

with sale_annualy as (
      select calendar_year as year, sum(cast(sales as bigint)) as total_sales
	  from clean_weekly_sales
	  group by calendar_year
),

sale_growth as (
      select curr.year, curr.total_sales,
	         pre.total_sales as pre_year_sales,
			 curr.total_sales - pre.total_sales as actual_growth,
			 cast(round((curr.total_sales - pre.total_sales)*100.0 / nullif(pre.total_sales, 0), 2) as decimal(10, 2)) as pct_growth
			 from sale_annualy curr
			 left join sale_annualy pre
			      on curr.year = pre.year + 1
)

select *
from sale_growth
order by year;

-- 2. What about the entire 12 weeks before and after?

select sum(case when week_date between '2020-06-15'and dateadd(week, 12, '2020-06-15') then cast(sales as bigint) else 0 end) as total_sales_12_week_after,
       sum(case when week_date between dateadd(week, -12, '2020-06-15') and dateadd(day, -1,'2020-06-15') then cast(sales as bigint) else 0 end) as total_sales_12_week_before
from clean_weekly_sales; 

-- 3. How do the sale metrics for these 2 periods before and after compare with the previous years in 2018 and 2019?

with sales_by_year as (
    select 
        year(week_date) as sales_year,
        sum(case 
                when week_date between dateadd(week, -12, cast(concat(year(week_date), '-06-15') as date)) 
                                 and dateadd(day, -1, cast(concat(year(week_date), '-06-15') as date))
                then cast(sales as bigint) else 0 
            end) as sales_12_weeks_before,
        sum(case 
                when week_date between cast(concat(year(week_date), '-06-15') as date) 
                                 and dateadd(week, 12, cast(concat(year(week_date), '-06-15') as date))
                then cast(sales as bigint) else 0 
            end) as sales_12_weeks_after
    from clean_weekly_sales
    where year(week_date) in (2018, 2019, 2020)
    group by year(week_date)
),

comparison as (
    select 
        s.sales_year,
        s.sales_12_weeks_before,
        s.sales_12_weeks_after,
        case 
            when s.sales_year <> 2020 then 
                round((cast(data_2020.sales_12_weeks_before - s.sales_12_weeks_before as float)
                      / nullif(s.sales_12_weeks_before, 0)) * 100, 2)
            else null
        end as percent_change_before_vs_2020,
        case 
            when s.sales_year <> 2020 then 
                round((cast(data_2020.sales_12_weeks_after - s.sales_12_weeks_after as float) 
                      / nullif(s.sales_12_weeks_after, 0)) * 100, 2)
            else null
        end as percent_change_after_vs_2020
    from sales_by_year s
    cross join (
        select * from sales_by_year where sales_year = 2020
    ) as data_2020
)

select *
from comparison
order by sales_year;
