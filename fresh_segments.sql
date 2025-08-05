create database fresh_segments
use fresh_segments

create table interest_map (
    id int,
	interest_name varchar(max),
	interest_summary varchar(max),
	creates_at datetime,
	last_modified datetime
);

insert into interest_map (id, interest_name, interest_summary, creates_at, last_modified)
values
    (39189, 'Retired Budget Healthcare Shoppers', 'Retired people shopping for discount healthcare.', '2018-10-22 14:15:03', '2018-10-22 14:15:03'),
  (39190, 'Retired Health Insurance Researchers', 'Retired people researching health insurance options.', '2018-10-22 14:15:03', '2018-10-22 14:15:03'),
  (39191, 'Retired Wealthy Assisted Living Researchers', 'Retired wealthy people researching assisted living options.', '2018-10-22 14:15:03', '2018-10-22 14:15:03'),
  (39192, 'Bargain Shopping Researchers', 'People researching bargain shopping options.', '2018-10-22 14:15:03', '2018-10-22 14:15:03'),
  (39193, 'Medical Science Researchers', 'People researching medical science journals and publications.', '2018-10-22 14:15:03', '2018-10-22 14:15:03'),
  (39194, 'Cook at Home Parents', 'Parents that cook family meals at home.', '2018-10-22 14:15:03', '2018-10-22 14:15:03'),
  (39195, 'Retired Government Employees', 'Retired people who were government employees.', '2018-10-22 14:15:04', '2018-10-22 14:15:04'),
  (39196, 'Retired Assisted Living Shoppers', 'Retired people shopping for assisted living.', '2018-10-22 14:15:04', '2018-10-22 14:15:04'),
  (39197, 'Budget Grocery Shoppers', 'People shopping for groceries on a budget.', '2018-10-22 14:15:04', '2018-10-22 14:15:04'),
  (39198, 'Involved Parents', 'Parents actively involved in the education of their children.', '2018-10-22 14:15:04', '2018-10-22 14:15:04'),
  (39199, 'Medical Consultation Researchers', 'People researching medical consultation options.', '2018-10-22 14:15:04', '2018-10-22 14:15:04'),
  (39330, 'Atlanta Hawks Fans', 'People reading news about the Atlanta Hawks and watching games. These consumers are more likely to spend money on team gear.', '2018-10-22 18:40:04', '2018-10-22 18:40:04'),
  (39331, 'Denver Nuggets Fans', 'People reading news about the Denver Nuggets and watching games. These consumers are more likely to spend money on team gear.', '2018-10-22 18:40:04', '2018-10-22 18:40:04'),
  (39332, 'Indiana Pacers Fans', 'People reading news about the Indiana Pacers and watching games. These consumers are more likely to spend money on team gear.', '2018-10-22 18:40:04', '2018-10-22 18:40:04'),
  (39333, 'Los Angeles Clippers Fans', 'People reading news about the Los Angeles Clippers and watching games. These consumers are more likely to spend money on team gear.', '2018-10-22 18:40:04', '2018-10-22 18:40:04'),
  (39334, 'Memphis Grizzlies Fans', 'People reading news about the Memphis Grizzlies and watching games. These consumers are more likely to spend money on team gear.', '2018-10-22 18:40:04', '2018-10-22 18:40:04'),
  (39335, 'Orlando Magic Fans', 'People reading news about the Orlando Magic and watching games. These consumers are more likely to spend money on team gear.', '2018-10-22 18:40:04', '2018-10-22 18:40:04'),
  (39336, 'Philadelphia 76ers Fans', 'People reading news about the Philadelphia 76ers and watching games. These consumers are more likely to spend money on team gear.', '2018-10-22 18:40:04', '2018-10-22 18:40:04'),
  (39337, 'Phoenix Suns Fans', 'People reading news about the Phoenix Suns and watching games. These consumers are more likely to spend money on team gear.', '2018-10-22 18:40:04', '2018-10-22 18:40:04'),
  (39338, 'Portland Trail Blazers Fans', 'People reading news about the Portland Trail Blazers and watching games. These consumers are more likely to spend money on team gear.', '2018-10-22 18:40:04', '2018-10-22 18:40:04'),
  (39339, 'Utah Jazz Fans', 'People reading news about the Utah Jazz and watching games. These consumers are more likely to spend money on team gear.', '2018-10-22 18:40:04', '2018-10-22 18:40:04'),
  (39462, 'GIS Users', 'Professionals who use Geographic Information Systems', '2018-10-23 11:00:05', '2018-10-23 11:00:05'),
  (39547, 'Louisville Cardinals Fans', 'Fans of Louisville Cardinals', '2018-10-23 18:10:04', '2019-01-16 09:11:30'),
  (39551, 'Ride Share Drivers', 'Professionals reading industry news and researching products and services for ride share drivers.', '2018-10-23 19:20:04', '2018-10-23 19:20:04'),
  (39640, 'Big 12 Fans', 'Fans of Big 12', '2018-10-24 11:30:04', '2019-01-16 09:11:30'),
  (39641, 'Ohio State Buckeyes Fans', 'Fans of Ohio State Buckeyes', '2018-10-24 11:30:04', '2019-01-16 09:11:30'),
  (39642, 'Notre Dame Fighting Irish Fans', 'Fans of Notre Dame Fighting Irish', '2018-10-24 11:30:04', '2019-01-16 09:11:30'),
  (39643, 'Louisiana State University Tigers Fans', 'Fans of Louisiana State University Tigers', '2018-10-24 11:30:04', '2019-01-16 09:11:30'),
  (39644, 'Florida State Seminoles Fans', 'Fans of Florida State Seminoles', '2018-10-24 11:30:04', '2019-01-16 09:11:30'),
  (39645, 'Oregon Ducks Fans', 'Fans of Oregon Ducks', '2018-10-24 11:30:04', '2019-01-16 09:11:30'),
  (39646, 'Syracuse Orange Fans', 'Fans of Syracuse Orange', '2018-10-24 11:30:04', '2019-01-16 09:11:30'),
  (39647, 'South Carolina Gamecocks Fans', 'Fans of South Carolina Gamecocks', '2018-10-24 11:30:05', '2019-01-16 09:11:30'),
  (39648, 'UNC Tar Heels Fans', 'Fans of UNC Tar Heels', '2018-10-24 11:30:05', '2019-01-16 09:11:30'),
  (39649, 'Duke Blue Devils Fans', 'Fans of Duke Blue Devils', '2018-10-24 11:30:05', '2019-01-16 09:11:30'),
  (39650, 'Kentucky Wildcats Fans', 'Fans of Kentucky Wildcats', '2018-10-24 11:30:05', '2019-01-16 09:11:30'),
  (39651, 'Iowa Hawkeyes Fans', 'Fans of Iowa Hawkeyes', '2018-10-24 11:30:05', '2019-01-16 09:11:30'),
  (39652, 'Gonzaga Bulldogs Fans', 'Fans of Gonzaga Bulldogs', '2018-10-24 11:30:05', '2019-01-16 09:11:30'),
  (39653, 'Indiana Hoosiers Fans', 'Fans of Indiana Hoosiers', '2018-10-24 11:30:05', '2019-01-16 09:11:30'),
  (39654, 'Oklahoma State Cowboys Fans', 'Fans of Oklahoma State Cowboys', '2018-10-24 11:30:05', '2019-01-16 09:11:30'),
  (39655, 'Arizona Wildcats Fans', 'Fans of Arizona Wildcats', '2018-10-24 11:30:05', '2019-01-16 09:11:30'),
  (39656, 'Clemson Tigers Fans', 'Fans of Clemson Tigers', '2018-10-24 11:30:05', '2019-01-16 09:11:30'),
  (39657, 'Kansas City Royals Fans', 'Fans of Kansas City Royals', '2018-10-24 11:30:06', '2019-01-16 09:11:30'),
  (39658, 'Philadelphia Phillies Fans', 'Fans of Philadelphia Phillies', '2018-10-24 11:30:06', '2019-01-16 09:11:30'),
  (39659, 'Los Angeles Dodgers Fans', 'Fans of Los Angeles Dodgers', '2018-10-24 11:30:06', '2019-01-16 09:11:30'),
  (39665, 'Aspen Skiers and Snowboarders', 'Consumers reading reviews of ski resorts and snow reports in Aspen.', '2018-10-24 15:20:03', '2018-10-24 15:20:03'),
  (39685, 'Credit Cards Rewards Researchers', 'People researching rewards programs and comparing credit cards.', '2018-10-24 16:30:04', '2018-10-24 16:30:04'),
  (39767, 'Mexican Food Shoppers', 'Consumers shopping for products and ingredients for Mexican recipes.', '2018-10-25 16:20:04', '2018-10-25 16:20:04'),
  (39768, 'Hair Loss Prevention Researchers', 'Consumers shopping for hair loss prevention products and services.', '2018-10-25 16:20:04', '2018-10-25 16:20:04'),
  (39770, 'Sparkling Water Enthusiasts', 'Consumers researching sparkling water companies and purchasing sparkling water online.', '2018-10-25 16:20:04', '2018-10-25 16:20:04'),
  (40183, 'Canoeing and Kayaking Enthusiasts', 'People reading about canoeing and kayaking news and destinations.', '2018-11-02 17:10:04', '2019-01-16 09:11:30'),
  (40184, 'Scuba Diving Enthusiasts', 'People reading about scuba diving news and destinations.', '2018-11-02 17:10:04', '2019-01-16 09:11:30'),
  (40185, 'Astronomy Enthusiasts', 'People researching news and trends in astronomy.', '2018-11-02 17:10:04', '2018-11-02 17:10:04'),
  (40186, 'WWE and Pro Wrestling Fans', 'Consumers watching and reading about WWE and pro wrestling.', '2018-11-02 17:10:04', '2018-11-02 17:10:04'),
  (40187, 'Organic Food Eaters', 'Consumer reading about organic foods and researching organic food recipes.', '2018-11-02 17:10:04', '2018-11-02 17:10:04'),
  (40188, 'Civil War History Buff', 'People reading about the history of the American Civil War.', '2018-11-02 17:10:04', '2018-11-02 17:10:04'),
  (40189, 'Native American Culture Enthusiasts', 'People reading about Native American culture and traditions.', '2018-11-02 17:10:04', '2018-11-02 17:10:04'),
  (40190, 'Luxury Watch Shoppers', 'Consumers shopping for watches from luxury brands.', '2018-11-02 17:10:05', '2018-11-02 17:10:05'),
  (40191, 'Revolutionary War History Buffs', 'People reading about the history of the American Revolutionary War.', '2018-11-02 17:10:05', '2018-11-02 17:10:05'),
  (40192, 'Rome Trip Planners', 'People researching attractions and accommodations in Rome. These consumers are more likely to spend money on travel and local attractions.', '2018-11-02 17:10:05', '2018-11-02 17:10:05'),
  (40193, 'Myrtle Beach Trip Planners', 'People researching attractions and accommodations in Myrtle Beach. These consumers are more likely to spend money on travel and local attractions.', '2018-11-02 17:10:05', '2018-11-02 17:10:05'),
  (40194, 'Detroit Pistons Fans', 'People reading news about the Detroit Pistons and watching games. These consumers are more likely to spend money on team gear.', '2018-11-02 17:10:05', '2018-11-02 17:10:05'),
  (40195, 'U.S. History Buffs', 'People reading about the history of the United States of America.', '2018-11-02 17:10:05', '2018-11-02 17:10:05'),
  (40427, 'Model Aircraft and Rocket Hobbyists', 'People researching model aircrafts and rockets and shopping for products and equipment.', '2018-11-09 18:00:00', '2019-03-29 14:26:28'),
  (40434, 'History Buffs', 'People reading general history facts.', '2018-11-09 15:40:04', '2018-11-09 15:40:04'),
  (40435, 'World War One History Buffs', 'People reading about the history of World War I.', '2018-11-09 15:40:05', '2018-11-09 15:40:05'),
  (40436, 'Egypt Trip Planners', 'People researching attractions and accommodations in Egypt. These consumers are more likely to spend money on travel and local attractions.', '2018-11-09 15:40:05', '2018-11-09 15:40:05'),
  (40437, 'Podcast Listeners', 'People visiting sites about podcasts and reading or listening to content from popular podcasts.', '2018-11-09 15:40:05', '2018-11-09 15:40:05'),
  (40438, 'iPhone Users', 'Consumers shopping for products and services for their iPhones.', '2018-11-09 15:40:05', '2018-11-09 15:40:05'),
  (40439, 'Ski and Snowboard Apparel Shoppers', 'Consumers shopping for winter clothing from ski and snowboarding apparel brands.', '2018-11-09 15:45:04', '2018-11-09 15:45:04'),
  (40525, 'Hospital Executives', 'Professionals reading industry news and researching products and services for hospital executives.', '2018-11-12 17:30:04', '2018-11-12 17:30:04'),
  (40526, 'Condom Shoppers', 'Consumers comparing brands and shopping for condoms online.', '2018-11-12 17:30:04', '2018-11-12 17:30:04'),
  (40682, 'Ergonomic Office Supplies Shoppers', 'Consumers shopping for ergonomic desk and office supply products.', '2018-11-14 12:30:04', '2018-11-14 12:30:04'),
  (40683, 'Aviation Enthusiasts', 'People reading about aircrafts and flying and joining aviation communities.', '2018-11-14 12:30:04', '2018-11-14 12:30:04'),
  (40684, 'Space Travel Enthusiasts', 'People reading about space travel and supporting scientific advancements.', '2018-11-14 12:30:04', '2018-11-14 12:30:04'),
  (40685, 'Rodeo Enthusiasts', 'People researching and planning to attend local rodeos.', '2018-11-14 12:30:04', '2019-01-16 09:11:30'),
  (40686, 'Online Legal Document Service Researchers', 'People researching and comparing online services for legal documentation.', '2018-11-14 12:30:04', '2018-11-14 12:30:04'),
  (40687, 'Legal Advice Researchers', 'People researching and comparing services for legal advice.', '2018-11-14 12:30:04', '2018-11-14 12:30:04'),
  (40688, 'Legal News Readers', 'People reading news about law and the latest legal cases.', '2018-11-14 12:30:04', '2018-11-14 12:30:04'),
  (40689, 'Legal Help Seekers', 'People researching and comparing law firms for legal representation.', '2018-11-14 12:30:04', '2018-11-14 12:30:04'),
  (40690, 'Business Book Readers', 'People searching online for books and content about business.', '2018-11-14 12:30:04', '2018-11-14 12:30:04'),
  (40691, 'Poetry Readers', 'People searching online for poetry.', '2018-11-14 12:30:05', '2018-11-14 12:30:05'),
  (40692, 'eBook Readers', 'People searching online for eBooks and digital content.', '2018-11-14 12:30:05', '2018-11-14 12:30:05'),
  (40693, 'Nature and Outdoors Book Readers', 'People searching online for books and content about nature and the outdoors.', '2018-11-14 12:30:05', '2018-11-14 12:30:05'),
  (40694, 'Anime Fans', 'People reading fan sites, promotional material, and news on the latest anime.', '2018-11-14 12:30:05', '2018-11-14 12:30:05'),
  (40695, 'Alternative Medicine Enthusiasts', 'People researching products and methods of alternative medicine.', '2018-11-14 12:30:05', '2018-11-14 12:30:05'),
  (40696, 'Palm Beach Trip Planners', 'People researching attractions and accommodations in Palm Beach. These consumers are more likely to spend money on travel and local attractions.', '2018-11-14 12:30:05', '2018-11-14 12:30:05'),
  (40697, 'Santa Cruz Trip Planners', 'People researching attractions and accommodations in Santa Cruz. These consumers are more likely to spend money on travel and local attractions.', '2018-11-14 12:30:05', '2018-11-14 12:30:05'),
  (40698, 'GMC Vehicle Shopper', 'People researching and comparing GMC vehicles. These consumers are more likely to spend money on a new or used car.', '2018-11-14 12:30:05', '2018-11-14 12:30:05'),
  (40699, 'Automotive Racing Enthusiasts', 'People researching automotive racing news and trends.', '2018-11-14 12:30:05', '2019-01-16 09:11:30'),
  (40700, 'Speedway Event Enthusiasts', 'People researching and planning to attend speedway events.', '2018-11-14 12:30:06', '2019-01-16 09:11:30'),
  (40701, 'Automotive News Readers', 'People reading news about automotive and the latest auto trends.', '2018-11-14 12:30:07', '2018-11-14 12:30:07'),
  (40702, 'Automotive Service Professionals', 'Professionals reading industry news and researching products and services for automotive service.', '2018-11-14 12:30:07', '2018-11-14 12:30:07'),
  (40703, 'Automotive Auctions Enthusiasts', 'People researching and planning to attend or make a purchase at an automotive auction.', '2018-11-14 12:30:07', '2018-11-14 12:30:07'),
  (41048, 'SEC Fans', 'Fans of SEC', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41052, 'Health and Fitness Book Readers', 'People searching online for books and content about health and fitness.', '2018-11-16 15:15:15', '2018-11-16 15:15:15'),
  (41054, 'ACC Fans', 'Fans of ACC', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41055, 'Travel Book Readers', 'People searching online for books and content about travel destinations.', '2018-11-16 15:15:15', '2018-11-16 15:15:15'),
  (41057, 'Auburn Tigers Fans', 'Fans of Auburn Tigers', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41058, 'Oklahoma Sooners Fans', 'Fans of Oklahoma Sooners', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41059, 'UConn Huskies Fans', 'Fans of UConn Huskies', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41061, 'Penn State Nittany Lions Fans', 'Fans of Penn State Nittany Lions', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41062, 'Michigan Wolverines Fans', 'Fans of Michigan Wolverines', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41063, 'Florida Gators Fans', 'Fans of Florida Gators', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41065, 'Tennessee Volunteers Fans', 'Fans of Tennessee Volunteers', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41066, 'Texas AM Aggies Fans', 'Fans of Texas AM Aggies', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41067, 'Arkansas Razorbacks Fans', 'Fans of Arkansas Razorbacks', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41069, 'Big East Fans', 'Fans of Big East', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41070, 'Cleveland Indians Fans', 'Fans of Cleveland Indians', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41072, 'Wyoming Cowboys Fans', 'Fans of Wyoming Cowboys', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41074, 'Minnesota Twins Fans', 'Fans of Minnesota Twins', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41075, 'Houston Astros Fans', 'Fans of Houston Astros', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41076, 'Los Angeles Angels Fans', 'Fans of Los Angeles Angels', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41078, 'Atlanta Braves Fans', 'Fans of Atlanta Braves', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41079, 'Miami Marlins Fans', 'Fans of Miami Marlins', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41080, 'New York Mets Fans', 'Fans of New York Mets', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41081, 'Washington Nationals Fans', 'Fans of Washington Nationals', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41082, 'Chicago Cubs Fans', 'Fans of Chicago Cubs', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41083, 'Cininnati Reds Fans', 'Fans of Cininnati Reds', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41084, 'Milwaukee Brewers Fans', 'Fans of Milwaukee Brewers', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41085, 'Pittsburgh Pirates Fans', 'Fans of the Pittsburgh Pirates', '2018-11-16 15:15:15', '2019-04-22 13:23:52'),
  (41087, 'Arizona Diamondbacks Fans', 'Fans of Arizona Diamondbacks', '2018-11-16 15:15:15', '2019-01-16 09:11:30'),
  (41088, 'San Francisco Giants Fans', 'Fans of San Francisco Giants', '2018-11-16 15:15:16', '2019-01-16 09:11:30'),
  (41190, 'Sunglasses Shoppers', 'Consumers shopping online for sunglasses.', '2018-11-19 14:25:04', '2018-11-19 14:25:04'),
  (41191, 'Sports Memorabilia Shoppers', 'Consumers shopping for sports memorabilia.', '2018-11-19 14:25:04', '2018-11-19 14:25:04'),
  (41192, 'Sea World Park Trip Planners', 'People researching Sea World parks and planning a visit.', '2018-11-19 14:25:04', '2018-11-19 14:25:04'),
  (41193, 'Christmas Tree Shoppers', 'Consumers shopping for Christmas trees and other Christmas decorations online.', '2018-11-19 14:25:04', '2018-11-19 14:25:04'),
  (41194, 'Product Manuals Researchers', 'People researching product manuals for devices and gadgets.', '2018-11-19 14:25:04', '2018-11-19 14:25:04'),
  (41195, 'Ice Skating Enthusiasts', 'People reading about professional and recreational ice skating and shopping for equipment.', '2018-11-19 14:25:04', '2019-01-16 09:11:30'),
  (41196, 'Power Tools Shoppers', 'Consumers shopping for power tools and home construction equipment.', '2018-11-19 14:25:04', '2018-11-19 14:25:04'),
  (41197, 'Godiva Chocolate Fans', 'People researching the chocolate brands and shopping for chocolates and gifts from Godiva.', '2018-11-19 14:25:04', '2018-11-19 14:25:04'),
  (41199, 'St. Louis Cardinals Fans', 'Fans of St. Louis Cardinals Fans', '2018-11-19 16:00:04', '2019-01-16 09:11:30'),
  (41546, 'Reality TV Show Watchers', 'Consumers watching and reading about popular reality TV shows.', '2018-12-03 11:10:04', '2018-12-03 11:10:04'),
  (41547, 'Electronics Shoppers', 'Consumers shopping for electronics products online.', '2018-12-03 11:10:04', '2018-12-03 11:10:04'),
  (41548, 'Winter Apparel Shoppers', 'Consumers shopping for winter clothing from popular apparel brands.', '2018-12-03 11:10:04', '2018-12-03 11:10:04'),
  (41549, 'Bitcoin Enthusiasts', 'People reading industry news and following trends on bitcoin.', '2018-12-03 11:10:05', '2018-12-03 11:10:05'),
  (41550, 'Africa Trip Planners', 'People researching attractions and accommodations in Africa. These consumers are more likely to spend money on flights, hotels, and local attractions.', '2018-12-03 11:10:05', '2018-12-03 11:10:05'),
  (41551, 'Cookie Recipe Researchers', 'People researching cookie and dessert recipes and baking techniques.', '2018-12-03 11:10:05', '2018-12-03 11:10:05'),
  (41552, 'Restaurant Menu Researchers', 'Consumers researching menus for local and chain restaurants.', '2018-12-03 11:10:05', '2018-12-03 11:10:05'),
  (41553, 'Classical Music Enthusiasts', 'People reading about classical music and musicians.', '2018-12-03 11:10:05', '2018-12-03 11:10:05'),
  (41554, 'Northwestern Wildcats Fans', 'People reading news about the Northwestern Wildcats and watching games. These consumers are more likely to spend money on team gear.', '2018-12-03 11:10:05', '2018-12-03 11:10:05'),
  (41853, 'Atlanta United Fans', 'People reading news about the Atlanta United soccer team and watching games. These consumers are more likely to spend money on team gear.', '2018-12-07 11:50:03', '2018-12-07 11:50:03'),
  (41854, 'Swimming Enthusiasts', 'People reading about swim lessons and swimming competitions.', '2018-12-07 11:50:04', '2019-01-16 09:11:30'),
  (41855, 'Snow Removal Researchers', 'Consumers researching and comparing snow removal equipment brands.', '2018-12-07 11:50:04', '2018-12-07 11:50:04'),
  (41856, 'Chocolate Lovers', 'Consumers researching chocolate companies and purchasing chocolates and desserts.', '2018-12-07 11:50:04', '2018-12-07 11:50:04'),
  (41857, 'Aquarium Trip Planners', 'People researching aquariums and planning a visit.', '2018-12-07 11:50:04', '2018-12-07 11:50:04'),
  (42000, 'Chicken Recipe Researchers', 'People researching recipes that feature chicken.', '2018-12-11 10:35:05', '2018-12-11 10:35:05'),
  (42008, 'The Sims Video Game Fans', 'People reading The Sims news and following gaming trends.', '2018-12-11 14:15:04', '2018-12-11 14:15:04'),
  (42010, 'Minecraft Video Game Fans', 'People reading Minecraft news and following gaming trends.', '2018-12-11 14:15:04', '2018-12-11 14:15:04'),
  (42011, 'League of Legends Video Game Fans', 'People reading League of Legends news and following gaming trends.', '2018-12-11 14:15:05', '2018-12-11 14:15:05'),
  (42012, 'Destiny Video Game Fans', 'People reading Destiny news and following gaming trends.', '2018-12-11 14:15:05', '2018-12-11 14:15:05'),
  (42203, 'Fitness Activity Tracker Users', 'People using health and fitness activity trackers.', '2018-12-13 20:00:00', '2019-01-31 12:40:53'),
  (42237, 'Ebay Shoppers', 'Consumers shoping online at Ebay.', '2018-12-14 21:00:00', '2019-01-31 13:46:00'),
  (42238, 'Online Calculator Users', 'Consumers using online calculators.', '2018-12-14 21:00:00', '2019-01-31 13:49:10'),
  (42239, 'ESPN Enthusiasts', 'Consumers watching and reading content from ESPN networks.', '2018-12-14 21:00:00', '2019-01-31 13:47:39'),
  (42368, 'Online Thesaurus Users', 'Consumers using online thesauruses.', '2018-12-18 22:00:01', '2019-01-31 13:50:37'),
  (42398, 'Tea Drinkers', 'Consumers researching tea companies and purchasing tea online.', '2018-12-19 13:45:03', '2018-12-19 13:45:03'),
  (42399, 'Farming Simulator Video Game Fans', 'People reading farming simulator game news and following gaming trends.', '2018-12-19 13:45:03', '2018-12-19 13:45:03'),
  (42400, 'Diablo Video Game Fans', 'People reading Diablo news and following gaming trends.', '2018-12-19 13:45:03', '2018-12-19 13:45:03'),
  (42401, 'Hearthstone Video Game Fans', 'People reading Hearthstone news and following gaming trends.', '2018-12-19 13:45:03', '2018-12-19 13:45:03'),
  (42479, 'Smoky Mountains Trip Planners', 'People researching attractions and accommodations in the Smoky Mountains region. These consumers are more likely to spend money on travel and local attractions.', '2018-12-20 12:00:04', '2018-12-20 12:00:04'),
  (42964, 'Biohackers', 'People researching health and fitness methods and products to bio-hack their bodies.', '2019-01-07 12:00:03', '2019-01-07 12:00:03'),
  (43539, 'Discount Flight Searchers', 'Consumers searching for flight discounts and deals using online airfare comparison tools.', '2019-01-10 11:10:03', '2019-01-10 11:10:03'),
  (43540, 'Voice Over Internet Protocol (VoIP) Users', 'Consumers researching and using VoIP technologies.', '2019-01-10 11:10:04', '2019-01-10 11:10:04'),
  (43541, 'Wig Shoppers', 'Consumers shopping wig and hair products and services.', '2019-01-10 11:10:04', '2019-01-10 11:10:04'),
  (43542, 'Waterfront Vacationers', 'People researching and booking vacations at beach, river or lake destinations.', '2019-01-10 11:10:04', '2019-01-10 11:10:04'),
  (43543, 'Home Brewing Enthusiasts', 'People researching techniques and purchasing products for home beer brewing.', '2019-01-10 11:10:04', '2019-01-10 11:10:04'),
  (43544, 'Craft Beer Enthusiasts', 'People researching craft breweries and beers.', '2019-01-10 11:10:04', '2019-01-10 11:10:04'),
  (43545, 'Homemade Gifts Crafters', 'Consumers researching breweries and purchasing craft beer.', '2019-01-10 11:10:04', '2019-01-10 11:10:04'),
  (43546, 'Personalized Gift Shoppers', 'Consumers shopping for gifts that can be personalized.', '2019-01-10 11:10:04', '2019-01-10 11:10:04'),
  (43547, 'Animal Humane Society Helpers', 'People supporting Animal Humane Society through volunteer service and donations.', '2019-01-10 11:10:04', '2019-01-10 11:10:04'),
  (43548, 'Animal Rights Researchers', 'People researching and supporting animal rights organizations.', '2019-01-10 11:10:04', '2019-01-10 11:10:04'),
  (43549, 'Dog Breed Researchers', 'People researching dog breeds and breeders.', '2019-01-10 11:10:05', '2019-01-10 11:10:05'),
  (43550, 'Meal Kit Delivery Researchers', 'Consumers researching and subscribing to meal kit delivery services.', '2019-01-10 11:10:05', '2019-01-10 11:10:05'),
  (43551, 'Virtual Reality Enthusiasts', 'Consumers researching and shopping for virtual reality products.', '2019-01-10 11:10:05', '2019-01-10 11:10:05'),
  (43552, 'Grand Theft Auto Video Game Fans', 'People reading Grand Theft Auto news and following gaming trends', '2019-01-10 11:10:05', '2019-01-10 11:10:05'),
  (44272, 'Rowing Enthusiasts', 'People researching rowing and purchasing equipment and apparel.', '2019-01-25 13:10:04', '2019-01-25 13:10:04'),
  (44378, 'Internet Speed Testers', 'Consumers researching and using internet speed tester tools.', '2019-01-25 23:00:00', '2019-01-31 14:06:53'),
  (44379, 'French Language Learners', 'Consumers using sites and online resources to learn French.', '2019-01-25 23:00:00', '2019-01-31 14:07:00'),
  (44380, 'Home Heating and Cooling Researchers', 'Consumers comparing or shopping for home heating and cooling systems.', '2019-01-25 23:00:00', '2019-01-31 14:07:07'),
  (44381, 'Symphony Music Enthusiasts', 'People reading about symphony music and classical music ', '2019-01-25 23:00:00', '2019-01-31 14:07:14'),
  (44382, 'Lyrics Researchers', 'Consumers reading about popular music and the lyrics of songs.', '2019-01-25 23:00:00', '2019-01-31 14:07:22'),
  (44383, 'Guitar Music Researchers', 'Consumers reading about guitar music and researching sheet music to play.', '2019-01-25 23:00:00', '2019-01-31 14:07:29'),
  (44384, 'Action Figure and Collectibles Shoppers', 'Shoppers interested in collecting action figures.', '2019-01-25 23:00:00', '2019-04-02 16:17:29'),
  (44385, 'Sudoku Players', 'People playing sudoku online and researching strategies.', '2019-01-25 23:00:00', '2019-03-12 12:57:18'),
  (44386, 'Crossword Puzzles Players', 'People joining crossword puzzle communities and completing crossword puzzles online.', '2019-01-25 23:00:00', '2019-01-31 14:07:37'),
  (44387, 'Puzzle Enthusiasts', 'People joining puzzle communities and playing puzzle and card games online.', '2019-01-25 23:00:00', '2019-01-31 14:07:45'),
  (44388, 'Board Game Enthusiasts', 'People playing and creating board games.', '2019-01-25 23:00:00', '2019-03-12 12:57:18'),
  (44389, 'Mahjong Players', 'People joining mahjong communities and playing mahjong online.', '2019-01-25 23:00:00', '2019-01-31 14:07:51'),
  (44390, 'Background Check Users', 'People using background check websites.', '2019-01-25 23:00:00', '2019-02-06 16:21:45'),
  (44391, 'Spanish Language Learners', 'Consumers using sites and online resources to learn Spanish.', '2019-01-25 23:00:00', '2019-01-31 14:07:58'),
  (44444, 'Home DIY Enthusiasts', 'People enthusiastic about Home DIY projects', '2019-01-28 09:00:04', '2019-01-28 09:00:04'),
  (44445, 'Teaching Resources Researchers', 'People researching teaching resources and materials', '2019-01-28 09:00:04', '2019-01-28 09:00:04'),
  (44446, 'Home Rug Shoppers', 'People shopping for home rugs', '2019-01-28 09:00:04', '2019-01-28 09:00:04'),
  (44447, 'Home Goods Shoppers', 'People shopping for home goods', '2019-01-28 09:00:04', '2019-01-28 09:00:04'),
  (44448, 'Home Custom Bedroom Decorators', 'People interested in custom bedroom decorating', '2019-01-28 09:00:04', '2019-01-28 09:00:04'),
  (44449, 'United Nations Donors', 'People donating to the United Nations', '2019-01-28 09:00:05', '2019-01-28 09:00:05'),
  (44450, 'Trendy Shoe Shoppers', 'People shopping for trendy and fashionable shoes', '2019-01-28 09:00:05', '2019-01-28 09:00:05'),
  (44451, 'Music Trivia Researchers', 'People researching movie trivia facts', '2019-01-28 09:00:05', '2019-01-28 09:00:05'),
  (44452, 'Primary Care Doctor Researchers', 'People researching primary care doctors', '2019-01-28 09:00:05', '2019-01-28 09:00:05'),
  (44453, 'Mens Business Clothes Shoppers', 'People shopping for mens business clothing', '2019-01-28 09:00:05', '2019-01-28 09:00:05'),
  (44454, 'Marines', 'People in the Marines', '2019-01-28 09:00:05', '2019-01-28 09:00:05'),
  (44455, 'Kitchen Stove Shoppers', 'People shopping for kitchen stoves', '2019-01-28 09:00:05', '2019-01-28 09:00:05'),
  (44456, 'Craft Spirits Enthusiasts', 'People enthusiastic about craft spirits', '2019-01-28 09:00:05', '2019-01-28 09:00:05'),
  (44457, 'New York City Fine Theatre Enthusiasts', 'People enthusiastic about New York City fine theatre', '2019-01-28 09:00:05', '2019-08-15 10:14:58'),
  (44458, 'Federal Employee Benefits Researchers', 'People researching federal employee benefits', '2019-01-28 09:00:05', '2019-01-28 09:00:05'),
  (44459, 'Foot Pain Sufferers', 'People suffering from foot pain', '2019-01-28 09:00:05', '2019-01-28 09:00:05'),
  (44460, 'Military Benefits Researchers', 'People researching military benefits', '2019-01-28 09:00:05', '2019-01-28 09:00:05'),
  (44461, 'Gun Violence Researchers', 'People researching gun violence', '2019-01-28 09:00:05', '2019-01-28 09:00:05'),
  (44462, 'Immigration Resource Researchers', 'People researching immigration resources', '2019-01-28 09:00:06', '2019-01-28 09:00:06'),
  (44463, 'Immigration Policy Researchers', 'People researching immigration policy', '2019-01-28 09:00:06', '2019-01-28 09:00:06'),
  (44464, 'Health Conscious Expecting Parents', 'Health-first people expecting children', '2019-01-28 09:00:06', '2019-01-28 09:00:06'),
  (44465, 'Luxury Athletic Footwear Shoppers', 'People shopping for luxury athletic footwear', '2019-01-28 09:00:06', '2019-01-28 09:00:06'),
  (44466, 'Wedding Content Readers', 'People reading content about weddings', '2019-01-28 09:00:06', '2019-01-28 09:00:06'),
  (44467, 'Family Tree Enthusiasts', 'People enthusiastic about family trees', '2019-01-28 09:00:06', '2019-01-28 09:00:06'),
  (44468, 'Tutoring Resources Researchers', 'People researching tutoring resources and materials', '2019-01-28 09:00:06', '2019-01-28 09:00:06'),
  (44469, 'Home Interior Design Enthusiasts', 'People enthusiastic about home interior design', '2019-01-28 09:00:06', '2019-01-28 09:00:06'),
  (44470, 'Custom Home Lighting Shoppers', 'People shopping for custom home lighting solutions', '2019-01-28 09:00:06', '2019-01-28 09:00:06'),
  (44471, 'Retirement Financial Account Researchers', 'People researching retirement financial accounts', '2019-01-28 09:00:06', '2019-01-28 09:00:06'),
  (44472, 'Country Home Decorators', 'People interested in country home decorating', '2019-01-28 09:00:06', '2019-01-28 09:00:06'),
  (44473, 'Home Coffee Makers', 'People making coffee at home', '2019-01-28 09:00:06', '2019-01-28 09:00:06'),
  (44474, 'Los Angeles Activities Researchers', 'People researching Los Angeles activities', '2019-01-28 09:00:07', '2019-01-28 09:00:07'),
  (44475, 'Georgia Activities Researchers', 'People researching Georgia activities', '2019-01-28 09:00:07', '2019-01-28 09:00:07'),
  (44476, 'New York City Events Researchers', 'People researching New York City events', '2019-01-28 09:00:07', '2019-01-28 09:00:07'),
  (44477, 'Houston Activity Researchers', 'People researching Houston activities', '2019-01-28 09:00:07', '2019-01-28 09:00:07'),
  (44478, 'San Francisco Activities Researchers', 'People researching San Francisco activities', '2019-01-28 09:00:07', '2019-01-28 09:00:07'),
  (44479, 'Nashville Activity Researchers', 'People researching Nashville activities', '2019-01-28 09:00:07', '2019-01-28 09:00:07'),
  (44480, 'New Orleans Activities Researchers', 'People researching New Orleans activities', '2019-01-28 09:00:07', '2019-01-28 09:00:07'),
  (44481, 'Las Vegas Hotel Researchers', 'People researching Las Vegas Hotels', '2019-01-28 09:00:07', '2019-01-28 09:00:07'),
  (44482, 'Orlando Activities Researchers', 'People researching Orlando activities', '2019-01-28 09:00:07', '2019-01-28 09:00:07'),
  (44483, 'Louisiana Activities Researchers', 'People researching Louisiana activities', '2019-01-28 09:00:07', '2019-01-28 09:00:07'),
  (44484, 'Texas Activity Researchers', 'People researching Texas activities', '2019-01-28 09:00:07', '2019-01-28 09:00:07'),
  (44485, 'Home Exterior Design Enthusiasts', 'People enthusiastic about home exterior design', '2019-01-28 09:00:07', '2019-01-28 09:00:07'),
  (44486, 'Heart Surgery Researchers', 'People researching heart surgery', '2019-01-28 09:00:08', '2019-01-28 09:00:08'),
  (44487, 'San Diego Activities Researchers', 'People researching San Diego activities', '2019-01-28 09:00:08', '2019-01-28 09:00:08'),
  (44488, 'San Diego Events Researchers', 'People researching San Diego events', '2019-01-28 09:00:08', '2019-01-28 09:00:08'),
  (44489, 'Home Goods Supercenter Shoppers', 'People shopping in home goods supercenters', '2019-01-28 09:00:08', '2019-01-28 09:00:08'),
  (44490, 'Luxury Fitness Shoppers', 'People shopping for luxury fitness activities', '2019-01-28 09:00:08', '2019-01-28 09:00:08'),
  (44491, 'Disney Vacation Planners', 'People planning Disney Vacations', '2019-01-28 09:00:08', '2019-01-28 09:00:08'),
  (44537, 'Milk and Dairy Shoppers', 'Consumers visiting milk and dairy brands websites and shopping for products.', '2019-01-28 13:55:04', '2019-01-28 13:55:04'),
  (44579, 'Koi Pond Enthusiasts', 'People researching products and advice on caring for their koi ponds.', '2019-01-28 23:00:00', '2019-02-01 14:06:48'),
  (44580, 'Home Cleaning Researchers', 'People researching products and techniques for cleaning household items.', '2019-01-28 23:00:00', '2019-03-11 12:36:24'),
  (44581, 'Darts Enthusiasts', 'People reading about dart competitions and shopping for equipment.', '2019-01-28 23:00:00', '2019-02-01 14:12:20'),
  (44582, 'Spy Gadgets Shoppers', 'Consumers shopping for spy gadgets and home security electronics.', '2019-01-28 23:00:00', '2019-02-01 14:12:30'),
  (44583, 'Sustainable Lifestyle Enthusiasts', 'People researching products and services for a sustainable lifestyle.', '2019-01-28 23:00:00', '2019-02-01 14:12:40'),
  (44584, 'Child Car Seat Researchers', 'People researching and comparing car seats for children.', '2019-01-28 23:00:00', '2019-02-01 14:12:49'),
  (44585, 'Ballet Enthusiasts', 'People researching historical and contemporary ballets and visiting performance spaces.', '2019-01-28 23:00:00', '2019-02-06 16:21:45'),
  (44586, 'Opera Enthusiasts', 'People reading about operas and performers.', '2019-01-28 23:00:00', '2019-02-01 14:12:57'),
  (44587, 'Baseball Enthusiasts', 'People researching baseball leagues and purchasing equipment and apparel.', '2019-01-28 23:00:00', '2019-02-01 14:13:05'),
  (44588, 'Softball Enthusiasts', 'People researching softball leagues and purchasing equipment and apparel.', '2019-01-28 23:00:00', '2019-02-01 14:13:14'),
  (44589, 'Brooklyn Nets Fans', 'People reading news about the Brooklyn Nets and watching games. These consumers are more likely to spend money on team gear.', '2019-01-28 23:00:00', '2019-02-01 14:13:33'),
  (45515, 'US Judiciary System Researchers', 'People researching history and news on the US Judiciary System and legal system.', '2019-02-04 22:00:00', '2019-02-06 16:21:46'),
  (45516, 'Basketball Enthusiasts', 'People researching basketball and purchasing equipment and apparel.', '2019-02-04 22:00:00', '2019-02-06 16:21:46'),
  (45517, 'Football Enthusiasts', 'People researching football and purchasing equipment and apparel.', '2019-02-04 22:00:00', '2019-02-06 16:21:46'),
  (45518, 'Volleyball Enthusiasts', 'People researching volleyball and purchasing equipment and apparel.', '2019-02-04 22:00:00', '2019-02-06 16:21:47'),
  (45519, 'Competitive Wrestling Enthusiasts', 'People researching competitive wrestling and purchasing equipment and apparel.', '2019-02-04 22:00:00', '2019-02-06 16:21:47'),
  (45520, 'Cricket Enthusiasts', 'People researching cricket and purchasing equipment and apparel.', '2019-02-04 22:00:00', '2019-02-06 16:21:47'),
  (45521, 'Rock Climbing Enthusiasts', 'People researching rock climbing and purchasing equipment and apparel.', '2019-02-04 22:00:00', '2019-02-06 16:21:48'),
  (45522, 'Hair Color Shoppers', 'Consumers shopping for hair color products and services.', '2019-02-04 22:00:00', '2019-02-06 16:21:48'),
  (45523, 'Welding Tools and Supplies Shoppers', 'Consumers shopping for welding tools and supplies.', '2019-02-04 22:00:00', '2019-02-06 16:21:48'),
  (45524, 'Mowing Equipment Shoppers', 'Consumers researching lawn and gardening equipment.', '2019-02-04 22:00:00', '2019-02-06 16:21:49'),
  (45525, 'Cattle Industry New Readers', 'People reading industry news and following business trends in the cattle industry.', '2019-02-04 22:00:00', '2019-02-06 16:21:49'),
  (45526, 'Dairy Industry New Readers', 'People reading industry news and following business trends in the dairy industry.', '2019-02-04 22:00:00', '2019-02-06 16:21:49'),
  (45527, 'CBD Oils Shoppers', 'People researching products and health benefits of using CBD oils.', '2019-02-04 22:00:00', '2019-02-06 16:21:50'),
  (45528, 'Cannabis News Readers', 'People reading industry news and following business trends for cannabis brands and products.', '2019-02-04 22:00:00', '2019-02-06 16:21:50'),
  (45662, 'Psychiatrists', 'Professionals reading industry news and medical information on psychiatry.', '2019-02-06 21:00:01', '2019-02-07 15:17:10'),
  (45664, 'Headphone Shoppers', 'Consumers comparing and shopping for headphones and audio products.', '2019-02-06 21:00:01', '2019-02-07 15:17:10'),
  (45665, 'Reptile Enthusiasts', 'People reading about reptiles and shopping for pet products and services.', '2019-02-06 21:00:01', '2019-02-07 15:17:11'),
  (45666, 'Bird and Parrot Lovers', 'People reading about birds and parrots and shopping for pet products and services.', '2019-02-06 21:00:01', '2019-02-07 15:17:11'),
  (45667, 'Blades and Hunting Knife Shoppers', 'Consumers shopping for blades and knives for hunting and outdoor activities.', '2019-02-06 21:00:01', '2019-02-07 15:17:11'),
  (45668, 'Pizza Lovers', 'Consumers researching pizza companies and purchasing pizza online.', '2019-02-06 21:00:01', '2019-02-07 15:17:12'),
  (45669, 'Cocktail Recipe Researchers', 'People researching recipes for cocktails and mixed drinks.', '2019-02-06 21:00:01', '2019-02-07 15:17:12'),
  (45670, 'Womens Swimsuit Shoppers', 'Consumers shopping for womens swimsuits and beach apparel.', '2019-02-06 21:00:01', '2019-02-07 15:17:12'),
  (45671, 'Mens Suit Shoppers', 'Consumers shopping for mens suits and formal attire.', '2019-02-06 21:00:01', '2019-02-07 15:17:13'),
  (45672, 'Bible Study Researchers', 'People reading information on Christianity and researching resources for bible studies.', '2019-02-06 21:00:01', '2019-02-07 15:17:13'),
  (45673, 'Fundraising Advocates', 'People researching fundraising organizations to offer support or donations.', '2019-02-06 21:00:01', '2019-03-11 12:36:24'),
  (45674, 'Medical Technology News Readers', 'People reading industry news and following business trends for medical technology companies.', '2019-02-06 21:00:01', '2019-02-07 15:17:13'),
  (45675, 'Home Medical Supplies Shoppers', 'Consumers shopping for medical supplies for home healthcare.', '2019-02-06 21:00:01', '2019-03-11 12:36:24'),
  (45676, 'Scrubs Uniforms Shoppers', 'Consumers shopping for scrubs and other medical uniforms.', '2019-02-06 21:00:01', '2019-02-07 15:17:14'),
  (45677, 'Sleepwear Shoppers', 'Consumers shopping for sleepwear.', '2019-02-06 21:00:02', '2019-02-07 15:17:14'),
  (45678, 'Mens Underwear Shoppers', 'Consumers shopping for mens underwear.', '2019-02-06 21:00:02', '2019-03-12 13:05:06'),
  (45679, 'Government Student Loan Researchers', 'People researching and comparing student loan offerings from government institutions.', '2019-02-06 21:00:02', '2019-02-07 15:17:14'),
  (45685, 'Cosmetic Surgery Intenders', 'People researching doctors and procedures for cosmetic surgery.', '2019-02-06 23:00:00', '2019-02-12 10:52:20'),
  (45725, 'Trampoline Shoppers', 'Consumers researching trampoline activities and shopping for trampolines.', '2019-02-07 21:00:00', '2019-02-12 10:52:31'),
  (46132, 'Counseling Researchers', 'People comparing counselors and researching options for counseling services.', '2019-02-15 18:00:00', '2019-02-25 14:00:17'),
  (46134, 'Pontoon Boat Researchers', 'People researching pontoons and other fishing and power boats.', '2019-02-15 18:00:00', '2019-02-25 14:00:17'),
  (46566, 'Fertility Treatment Researchers', 'People researching fertility treatment options.', '2019-02-25 18:00:00', '2019-02-26 15:01:48'),
  (46567, 'Bigfoot Folklore Enthusiasts', 'People reading about Bigfoot folklore and other mystical creatures and urban legends.', '2019-02-25 18:00:00', '2019-02-26 15:01:48'),
  (47065, 'Diabetes Support Forum Readers', 'People reading news and advice on preventing and treating diabetes.', '2019-03-05 18:00:00', '2019-03-07 11:46:12'),
  (47115, 'Electric Vehicle Shoppers', 'People researching and comparing electric vehicles.', '2019-03-05 22:00:00', '2019-03-11 12:36:24'),
  (47130, 'Home Lending Researchers', 'People researching home lending accommodations for business and personal travel.', '2019-03-06 00:00:00', '2019-03-11 12:36:24'),
  (47713, 'High School Sports Researchers', 'People reading about high school sports programs.', '2019-03-14 18:00:00', '2019-03-15 15:47:10'),
  (47789, 'Israel Trip Planners', 'People researching attractions and accommodations in Israel. These consumers are more likely to spend money on travel, lodging, attractions and guided tours.', '2019-03-14 22:00:00', '2019-04-02 16:17:29'),
  (47850, 'Asheville Trip Planners', 'People researching attractions and accommodations in Asheville. These consumers are more likely to spend money on flights, hotels, lodging and local attractions.', '2019-03-15 22:00:02', '2019-03-21 15:33:09'),
  (48022, 'Sushi Lovers', 'People researching sushi related content.', '2019-03-19 22:00:00', '2019-03-21 15:33:09'),
  (48154, 'Elite Cycling Gear Shoppers', 'Consumers researching and shopping for elite cycling equipment, apparel and accessories.', '2019-03-21 22:00:00', '2019-03-22 15:31:46'),
  (48459, 'Work Visa Researchers', 'People researching Work Visa and Immigration related content.', '2019-03-27 22:00:00', '2019-03-28 16:40:23'),
  (48460, 'Online Payroll Services Users', 'People, like human resource professionals, researching and using online payroll services.', '2019-03-27 22:00:01', '2019-03-28 16:40:22'),
  (48462, 'Self Storage Shoppers', 'People in-market for self-storage and moving related products and services.', '2019-03-27 22:00:01', '2019-03-28 16:40:23'),
  (48463, 'PBS Enthusiasts', 'People interested in PBS programming.', '2019-03-27 22:00:01', '2019-03-28 16:40:22'),
  (48465, 'HGTV Enthusiasts', 'People interested in HGTV shows and home remodeling content.', '2019-03-27 22:00:01', '2019-04-02 16:17:29'),
  (49502, 'Veterinarians', 'Veterinarians', '2019-04-08 18:00:05', '2019-07-09 13:57:13'),
  (49972, 'Horseback Riding Enthusiasts', 'People reading horseback riding news and resources.', '2019-04-15 18:00:00', '2019-04-24 17:40:04'),
  (49973, 'Farm Finance Researchers', 'People researching financial institutions specializing in farming business.', '2019-04-15 18:00:00', '2019-04-24 17:40:04'),
  (49974, 'Agricultural and Food Issues Researchers', 'People researching organizations for food and agriculture issues.', '2019-04-15 18:00:00', '2019-04-24 17:40:04'),
  (49975, 'Cattlemen and Pork Producers', 'Professionals reading news and trends in the beef and pork production industries.', '2019-04-15 18:00:00', '2019-04-24 17:40:05'),
  (49976, 'Agriculture and Climate Advocates', 'People supporting organizations for agriculture and climate advocacy.', '2019-04-15 18:00:00', '2019-04-24 17:40:04'),
  (49977, 'DIY Upcycle Home Project Planners', 'People researching and planning home DIY and upcycle projects.', '2019-04-15 18:00:00', '2019-04-24 17:40:04'),
  (49978, 'Homeschooling Parents', 'People researching academic projects and programs to homeschool their children.', '2019-04-15 18:00:00', '2019-04-24 17:40:04'),
  (49979, 'Cape Cod News Readers', 'People interested in reading about local news and events surrounding the Cape Cod, MA area.', '2019-04-15 18:00:00', '2019-04-18 09:00:05'),
  (50860, 'Food Delivery Service Users', 'Users of online food delivery services.', '2019-04-23 18:00:02', '2019-04-24 18:30:04'),
  (51119, 'Skin Disorder Researchers', 'People reading news and advice on preventing and treating skin disorders.', '2019-04-26 18:00:00', '2019-04-29 14:20:04'),
  (51120, 'Foot Health Researchers', 'People reading news and advice on preventing and treating foot health issues.', '2019-04-26 18:00:00', '2019-04-29 14:20:04'),
  (51678, 'Plumbers', 'Professionals reading industry news and researching products and services for plumbers.', '2019-05-06 22:00:00', '2019-05-07 18:50:04');
   
UPDATE interest_map
SET interest_summary = NULL
WHERE interest_summary = '';

create table interest_metrics (
     _month varchar(4),
	 _year varchar(4),
	 month_year varchar(7),
	 interest_id varchar(5),
	 composition float,
	 index_value float,
	 ranking int,
	 percentile_ranking float
);

insert into interest_metrics (_month, _year, month_year, interest_id, composition, index_value, ranking, percentile_ranking)
values
      ('NULL', 'NULL', 'NULL', 'NULL', '2.1', '1.65', '727', '39.11'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.18', '1.65', '727', '39.11'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.37', '1.65', '727', '39.11'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.65', '1.65', '727', '39.11'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.22', '1.65', '727', '39.11'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.9', '1.65', '727', '39.11'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.82', '1.65', '727', '39.11'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.89', '1.64', '735', '38.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.14', '1.64', '735', '38.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.03', '1.64', '735', '38.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.09', '1.64', '735', '38.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.6', '1.64', '735', '38.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.9', '1.64', '735', '38.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '4.55', '1.64', '735', '38.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.22', '1.64', '735', '38.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.64', '1.63', '743', '37.77'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.23', '1.63', '743', '37.77'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.06', '1.63', '743', '37.77'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.58', '1.63', '743', '37.77'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.57', '1.63', '743', '37.77'),
  ('NULL', 'NULL', 'NULL', 'NULL', '4.23', '1.63', '743', '37.77'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.76', '1.63', '743', '37.77'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.55', '1.63', '743', '37.77'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.42', '1.62', '751', '37.1'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.17', '1.62', '751', '37.1'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.1', '1.62', '751', '37.1'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.38', '1.62', '751', '37.1'),
  ('NULL', 'NULL', 'NULL', 'NULL', '4.2', '1.62', '751', '37.1'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.32', '1.62', '751', '37.1'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.8', '1.62', '751', '37.1'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.21', '1.62', '751', '37.1'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.12', '1.62', '751', '37.1'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.33', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.95', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.33', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.92', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.38', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.38', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.44', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.93', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.14', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.87', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '4.3', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.83', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '4.03', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.4', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.7', '1.61', '760', '36.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.86', '1.6', '775', '35.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.35', '1.6', '775', '35.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.17', '1.6', '775', '35.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.33', '1.6', '775', '35.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.24', '1.6', '775', '35.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '5.07', '1.6', '775', '35.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.41', '1.6', '775', '35.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.21', '1.6', '775', '35.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.88', '1.6', '775', '35.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '4.17', '1.6', '775', '35.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.12', '1.6', '775', '35.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.96', '1.6', '775', '35.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.03', '1.6', '775', '35.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.46', '1.59', '788', '34'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.46', '1.59', '788', '34'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.13', '1.59', '788', '34'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.96', '1.59', '788', '34'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.9', '1.59', '788', '34'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.98', '1.59', '788', '34'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.22', '1.59', '788', '34'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.86', '1.59', '788', '34'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.41', '1.59', '788', '34'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.04', '1.59', '788', '34'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.91', '1.59', '788', '34'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.45', '1.58', '799', '33.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.98', '1.58', '799', '33.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.41', '1.58', '799', '33.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.36', '1.58', '799', '33.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.23', '1.58', '799', '33.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.42', '1.58', '799', '33.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.72', '1.58', '799', '33.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.32', '1.58', '799', '33.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.24', '1.58', '799', '33.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.93', '1.58', '799', '33.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.81', '1.57', '809', '32.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.25', '1.57', '809', '32.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.39', '1.57', '809', '32.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.42', '1.57', '809', '32.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.59', '1.57', '809', '32.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.43', '1.57', '809', '32.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '4.35', '1.57', '809', '32.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.59', '1.57', '809', '32.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.9', '1.57', '809', '32.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.16', '1.57', '809', '32.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.82', '1.57', '809', '32.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.79', '1.57', '809', '32.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.62', '1.57', '809', '32.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.79', '1.56', '822', '31.16'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.6', '1.56', '822', '31.16'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.31', '1.56', '822', '31.16'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.23', '1.56', '822', '31.16'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.22', '1.56', '822', '31.16'),
  ('NULL', 'NULL', 'NULL', 'NULL', '4.45', '1.56', '822', '31.16'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.54', '1.56', '822', '31.16'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.16', '1.56', '822', '31.16'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.38', '1.56', '822', '31.16'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.47', '1.56', '822', '31.16'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.99', '1.55', '832', '30.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.38', '1.55', '832', '30.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.17', '1.55', '832', '30.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.4', '1.55', '832', '30.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.06', '1.55', '832', '30.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.23', '1.55', '832', '30.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.85', '1.55', '832', '30.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.63', '1.55', '832', '30.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.63', '1.55', '832', '30.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.49', '1.55', '832', '30.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.37', '1.55', '832', '30.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.08', '1.55', '832', '30.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.97', '1.54', '844', '29.31'),
  ('NULL', 'NULL', 'NULL', 'NULL', '4.62', '1.54', '844', '29.31'),
  ('NULL', 'NULL', 'NULL', 'NULL', '4.5', '1.54', '844', '29.31'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.11', '1.54', '844', '29.31'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.4', '1.54', '844', '29.31'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.19', '1.54', '844', '29.31'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.42', '1.54', '844', '29.31'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.05', '1.54', '844', '29.31'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.26', '1.53', '852', '28.64'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.5', '1.53', '852', '28.64'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.87', '1.53', '852', '28.64'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.57', '1.53', '852', '28.64'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.31', '1.53', '852', '28.64'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.33', '1.53', '852', '28.64'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.93', '1.53', '852', '28.64'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.02', '1.53', '852', '28.64'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.42', '1.53', '852', '28.64'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.85', '1.53', '852', '28.64'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.3', '1.53', '852', '28.64'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.92', '1.52', '863', '27.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.13', '1.52', '863', '27.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.83', '1.52', '863', '27.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.13', '1.52', '863', '27.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.64', '1.52', '863', '27.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.17', '1.52', '863', '27.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.21', '1.52', '863', '27.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.3', '1.52', '863', '27.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.84', '1.52', '863', '27.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.94', '1.52', '863', '27.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.99', '1.52', '863', '27.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.14', '1.52', '863', '27.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.47', '1.51', '875', '26.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '4.04', '1.51', '875', '26.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.04', '1.51', '875', '26.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.31', '1.51', '875', '26.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '4.2', '1.51', '875', '26.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.23', '1.51', '875', '26.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.43', '1.51', '875', '26.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.98', '1.51', '875', '26.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.51', '1.51', '875', '26.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.65', '1.51', '875', '26.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.79', '1.51', '875', '26.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.08', '1.5', '886', '25.8'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.26', '1.5', '886', '25.8'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.09', '1.5', '886', '25.8'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.3', '1.5', '886', '25.8'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.98', '1.5', '886', '25.8'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.67', '1.5', '886', '25.8'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.86', '1.49', '892', '25.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.59', '1.49', '892', '25.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.91', '1.49', '892', '25.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.14', '1.49', '892', '25.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.34', '1.49', '892', '25.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.36', '1.49', '892', '25.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.49', '1.49', '892', '25.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.51', '1.49', '892', '25.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.54', '1.49', '892', '25.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.31', '1.49', '892', '25.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.99', '1.48', '902', '24.46'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.19', '1.48', '902', '24.46'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.97', '1.48', '902', '24.46'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.49', '1.48', '902', '24.46'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.67', '1.47', '906', '24.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.29', '1.47', '906', '24.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.5', '1.47', '906', '24.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.2', '1.47', '906', '24.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.26', '1.47', '906', '24.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.5', '1.47', '906', '24.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.8', '1.46', '912', '23.62'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.98', '1.46', '912', '23.62'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.31', '1.46', '912', '23.62'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.82', '1.46', '912', '23.62'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.11', '1.46', '912', '23.62'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.12', '1.46', '912', '23.62'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.64', '1.45', '918', '23.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.54', '1.45', '918', '23.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.28', '1.45', '918', '23.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.07', '1.45', '918', '23.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.4', '1.45', '918', '23.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.84', '1.45', '918', '23.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.05', '1.45', '918', '23.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.37', '1.45', '918', '23.12'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.69', '1.44', '926', '22.45'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.88', '1.44', '926', '22.45'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.75', '1.44', '926', '22.45'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.07', '1.44', '926', '22.45'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.12', '1.44', '926', '22.45'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.3', '1.44', '926', '22.45'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.07', '1.44', '926', '22.45'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.63', '1.44', '926', '22.45'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.63', '1.44', '926', '22.45'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.05', '1.44', '926', '22.45'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.75', '1.44', '926', '22.45'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.05', '1.44', '926', '22.45'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.82', '1.43', '938', '21.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.05', '1.43', '938', '21.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.07', '1.43', '938', '21.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.55', '1.43', '938', '21.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.81', '1.43', '938', '21.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.98', '1.43', '938', '21.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.74', '1.43', '938', '21.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.01', '1.43', '938', '21.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.14', '1.43', '938', '21.44'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.09', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.08', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.07', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.96', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.11', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.1', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.8', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.89', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.72', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.75', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.13', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.65', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.98', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.18', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.79', '1.42', '947', '20.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.99', '1.41', '962', '19.43'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.11', '1.41', '962', '19.43'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.27', '1.41', '962', '19.43'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.67', '1.41', '962', '19.43'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.19', '1.41', '962', '19.43'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.98', '1.41', '962', '19.43'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.81', '1.41', '962', '19.43'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.98', '1.4', '969', '18.84'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.7', '1.4', '969', '18.84'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.56', '1.4', '969', '18.84'),
  ('NULL', 'NULL', 'NULL', 'NULL', '4.11', '1.4', '969', '18.84'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.07', '1.39', '973', '18.51'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.85', '1.39', '973', '18.51'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.87', '1.39', '973', '18.51'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.97', '1.39', '973', '18.51'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.14', '1.39', '973', '18.51'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.12', '1.39', '973', '18.51'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.3', '1.39', '973', '18.51'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.44', '1.39', '973', '18.51'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.52', '1.39', '973', '18.51'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.19', '1.38', '982', '17.76'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.67', '1.38', '982', '17.76'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.6', '1.38', '982', '17.76'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2', '1.38', '982', '17.76'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.75', '1.38', '982', '17.76'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.59', '1.38', '982', '17.76'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.72', '1.38', '982', '17.76'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.17', '1.38', '982', '17.76'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.4', '1.37', '990', '17.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.86', '1.37', '990', '17.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.94', '1.37', '990', '17.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.96', '1.37', '990', '17.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.8', '1.37', '990', '17.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.81', '1.36', '995', '16.67'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.83', '1.36', '995', '16.67'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.71', '1.36', '995', '16.67'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.33', '1.36', '995', '16.67'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.03', '1.36', '995', '16.67'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.29', '1.36', '995', '16.67'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.26', '1.36', '995', '16.67'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.92', '1.35', '1002', '16.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.29', '1.35', '1002', '16.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.82', '1.35', '1002', '16.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.45', '1.35', '1002', '16.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.64', '1.35', '1002', '16.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.71', '1.34', '1007', '15.66'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.94', '1.34', '1007', '15.66'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.71', '1.34', '1007', '15.66'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.72', '1.34', '1007', '15.66'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.43', '1.34', '1007', '15.66'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.07', '1.33', '1012', '15.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.5', '1.33', '1012', '15.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.83', '1.33', '1012', '15.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.72', '1.33', '1012', '15.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.17', '1.33', '1012', '15.24'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.04', '1.32', '1017', '14.82'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.77', '1.32', '1017', '14.82'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.63', '1.32', '1017', '14.82'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.7', '1.32', '1017', '14.82'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.49', '1.31', '1021', '14.49'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.77', '1.31', '1021', '14.49'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.85', '1.31', '1021', '14.49'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.54', '1.31', '1021', '14.49'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.81', '1.31', '1021', '14.49'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.27', '1.31', '1021', '14.49'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.84', '1.31', '1021', '14.49'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.72', '1.31', '1021', '14.49'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.02', '1.3', '1029', '13.82'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.41', '1.3', '1029', '13.82'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.66', '1.3', '1029', '13.82'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.81', '1.3', '1029', '13.82'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.98', '1.3', '1029', '13.82'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.59', '1.3', '1029', '13.82'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.98', '1.29', '1035', '13.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.61', '1.29', '1035', '13.32'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3', '1.28', '1037', '13.15'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.12', '1.28', '1037', '13.15'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.23', '1.28', '1037', '13.15'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.62', '1.28', '1037', '13.15'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.01', '1.28', '1037', '13.15'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.37', '1.28', '1037', '13.15'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.84', '1.28', '1037', '13.15'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.91', '1.28', '1037', '13.15'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.47', '1.27', '1045', '12.48'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.06', '1.27', '1045', '12.48'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.91', '1.27', '1045', '12.48'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.57', '1.26', '1048', '12.23'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.79', '1.26', '1048', '12.23'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.24', '1.26', '1048', '12.23'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.63', '1.26', '1048', '12.23'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.69', '1.26', '1048', '12.23'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.82', '1.25', '1053', '11.81'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.65', '1.25', '1053', '11.81'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.03', '1.25', '1053', '11.81'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.19', '1.25', '1053', '11.81'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.34', '1.25', '1053', '11.81'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.71', '1.25', '1053', '11.81'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.39', '1.25', '1053', '11.81'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.64', '1.24', '1060', '11.22'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.04', '1.24', '1060', '11.22'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.65', '1.23', '1062', '11.06'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.78', '1.22', '1063', '10.97'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.64', '1.22', '1063', '10.97'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.14', '1.22', '1063', '10.97'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.74', '1.21', '1066', '10.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.45', '1.21', '1066', '10.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.53', '1.21', '1066', '10.72'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.54', '1.2', '1069', '10.47'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.54', '1.2', '1069', '10.47'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.15', '1.2', '1069', '10.47'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.56', '1.2', '1069', '10.47'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.83', '1.19', '1073', '10.13'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.26', '1.19', '1073', '10.13'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.43', '1.19', '1073', '10.13'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.86', '1.19', '1073', '10.13'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.08', '1.19', '1073', '10.13'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.33', '1.19', '1073', '10.13'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.79', '1.19', '1073', '10.13'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.29', '1.19', '1073', '10.13'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.41', '1.18', '1081', '9.46'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.35', '1.18', '1081', '9.46'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.46', '1.18', '1081', '9.46'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.57', '1.17', '1084', '9.21'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.65', '1.17', '1084', '9.21'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.94', '1.17', '1084', '9.21'),
  ('NULL', 'NULL', 'NULL', 'NULL', '3.06', '1.17', '1084', '9.21'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.49', '1.16', '1088', '8.88'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.6', '1.16', '1088', '8.88'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.72', '1.16', '1088', '8.88'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.59', '1.15', '1091', '8.63'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.37', '1.14', '1092', '8.54'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.73', '1.14', '1092', '8.54'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.51', '1.14', '1092', '8.54'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.36', '1.13', '1095', '8.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.9', '1.13', '1095', '8.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.2', '1.13', '1095', '8.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.37', '1.13', '1095', '8.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.23', '1.13', '1095', '8.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.34', '1.13', '1095', '8.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.48', '1.11', '1101', '7.79'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.33', '1.11', '1101', '7.79'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.62', '1.09', '1103', '7.62'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.29', '1.09', '1103', '7.62'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.12', '1.09', '1103', '7.62'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.29', '1.09', '1103', '7.62'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.18', '1.08', '1107', '7.29'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.03', '1.07', '1108', '7.2'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.1', '1.07', '1108', '7.2'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.89', '1.07', '1108', '7.2'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.33', '1.07', '1108', '7.2'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.43', '1.06', '1112', '6.87'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.38', '1.06', '1112', '6.87'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.4', '1.06', '1112', '6.87'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.08', '1.06', '1112', '6.87'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.76', '1.06', '1112', '6.87'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.39', '1.06', '1112', '6.87'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.59', '1.05', '1118', '6.37'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.22', '1.05', '1118', '6.37'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.01', '1.05', '1118', '6.37'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.07', '1.05', '1118', '6.37'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.68', '1.04', '1122', '6.03'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.46', '1.04', '1122', '6.03'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.36', '1.04', '1122', '6.03'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.96', '1.04', '1122', '6.03'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.29', '1.03', '1126', '5.7'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.94', '1.02', '1127', '5.61'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.16', '1', '1128', '5.53'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.56', '1', '1128', '5.53'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.04', '0.99', '1130', '5.36'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.19', '0.99', '1130', '5.36'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.18', '0.99', '1130', '5.36'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.84', '0.99', '1130', '5.36'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.41', '0.99', '1130', '5.36'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.37', '0.98', '1135', '4.94'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.12', '0.98', '1135', '4.94'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.95', '0.98', '1135', '4.94'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.07', '0.97', '1138', '4.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.43', '0.97', '1138', '4.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.95', '0.97', '1138', '4.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.55', '0.97', '1138', '4.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.98', '0.97', '1138', '4.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.45', '0.97', '1138', '4.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.43', '0.96', '1144', '4.19'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.17', '0.96', '1144', '4.19'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.01', '0.96', '1144', '4.19'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.29', '0.96', '1144', '4.19'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.88', '0.95', '1148', '3.85'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.05', '0.95', '1148', '3.85'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.94', '0.94', '1150', '3.69'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.15', '0.93', '1151', '3.6'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.97', '0.93', '1151', '3.6'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.41', '0.93', '1151', '3.6'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.17', '0.92', '1154', '3.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.98', '0.92', '1154', '3.35'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.05', '0.9', '1156', '3.18'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.95', '0.89', '1157', '3.1'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.01', '0.88', '1158', '3.02'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.8', '0.88', '1158', '3.02'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.68', '0.88', '1158', '3.02'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.08', '0.88', '1158', '3.02'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.8', '0.88', '1158', '3.02'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.9', '0.86', '1163', '2.6'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.62', '0.85', '1164', '2.51'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.6', '0.84', '1165', '2.43'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.89', '0.84', '1165', '2.43'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.33', '0.84', '1165', '2.43'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.93', '0.84', '1165', '2.43'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.95', '0.83', '1169', '2.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.54', '0.83', '1169', '2.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.02', '0.83', '1169', '2.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.7', '0.82', '1172', '1.84'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.82', '0.81', '1173', '1.76'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.65', '0.8', '1174', '1.68'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.98', '0.8', '1174', '1.68'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.96', '0.8', '1174', '1.68'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.67', '0.8', '1174', '1.68'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.74', '0.79', '1178', '1.34'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.54', '0.78', '1179', '1.26'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.56', '0.78', '1179', '1.26'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.7', '0.77', '1181', '1.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.54', '0.77', '1181', '1.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.94', '0.77', '1181', '1.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.77', '0.77', '1181', '1.09'),
  ('NULL', 'NULL', 'NULL', 'NULL', '2.05', '0.76', '1185', '0.75'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.8', '0.76', '1185', '0.75'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.62', '0.74', '1187', '0.59'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.7', '0.73', '1188', '0.5'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.6', '0.72', '1189', '0.42'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.62', '0.71', '1190', '0.34'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.62', '0.68', '1191', '0.25'),
  ('NULL', 'NULL', 'NULL', '21246', '1.61', '0.68', '1191', '0.25'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.51', '0.63', '1193', '0.08'),
  ('NULL', 'NULL', 'NULL', 'NULL', '1.64', '0.62', '1194', '0');

UPDATE interest_metrics
SET _month = CASE 
               WHEN _month = 'NULL' THEN NULL 
               ELSE CAST(_month AS INT) 
             END;

UPDATE interest_metrics
SET _year = CASE 
              WHEN _year = 'NULL' THEN NULL 
              ELSE CAST(_year AS INT) 
            END;

UPDATE interest_metrics
SET month_year = NULL
WHERE month_year = 'NULL';


UPDATE interest_metrics
SET interest_id = NULL
WHERE interest_id = 'NULL';

--------------------------------------------------------------------------------------------------
-- Data Exploration and Cleansing
-- 1. Update the fresh_segments.interest_metrics table by modifying the month_year column to be a date
--data type with the start of the month

alter table interest_metrics
add month_year_date date;

update interest_metrics
set month_year_date = try_convert(date, right(month_year, 4) + '-' + left(month_year, 2) + '-01')
where month_year is not null and month_year != 'NULL';

alter table interest_metrics
drop column month_year;

EXEC sp_rename 'interest_metrics.month_year_date', 'month_year', 'COLUMN';

-- 2. What is count of records in the fresh_segments.interest_metrics for each month_year value 
-- sorted in chronological order (earliest to latest) with the null values appearing first?

select month_year, count(*) as record_count
from interest_metrics
group by month_year
order by case when month_year is null then 0 else 1 end,
         month_year;

-- 3. What do you think we should do with these null values in the fresh_segments.interest_metrics

select *
from interest_metrics
-- chua nghi ra

-- 4. How many interest_id values exist in the fresh_segments.interest_metrics table but not in the
-- fresh_segments.interest_map table? What about the other way around?

select count(distinct interest_id) as count_id_metrics
from interest_metrics
where interest_id not in (
     select distinct id
	 from interest_map
	 where id is not null
);

select count(distinct id) as count_id_map
from interest_map
where id not in (
     select distinct interest_id
	 from interest_metrics
	 where interest_id is not null
);

-- 5.  Summarise the id values in the fresh_segments.interest_map by its total record count in this table

select id, count(*) as count_record
from interest_map
group by id
order by id;

------------------------------------------------------------------------------------------------------------
-- Interest Analysis
-- 1. Which interests have been present in all month_year dates in our dataset?

declare @total_month_year int;
select @total_month_year = count(distinct month_year) from interest_metrics;

with count_month_per_interest as (
     select interest_id, count(distinct month_year) as count_month
	 from interest_metrics
	 group by interest_id
)

select c.interest_id, m.interest_name
from count_month_per_interest c join interest_map m on c.interest_id = m.id
where c.count_month = @total_month_year;

-- 2. Using this same total_months measure - calculate the cumulative percentage of all records 
-- starting at 14 months - which total_months value passes the 90% cumulative percentage value?

with count_month_per_interest as (
     select interest_id, count(distinct month_year) as count_month
	 from interest_metrics
	 group by interest_id
),

summary_record as (
     select count_month as total_months, 
	        count(*) as record_count
	 from count_month_per_interest
	 where count_month >= 14
	 group by count_month
),

summary_cumulative as (
     select total_months,
	        record_count,
			sum(record_count) over (order by total_months) as cumulative_count,
			sum(record_count) over () as total_records
	 from summary_record
),

final as (
     select *,
	        cumulative_count * 100.0 / total_records as cumulative_percent
	 from summary_cumulative
)

select top 1 total_months, cumulative_percent
from final
where cumulative_percent >= 90
order by total_months;

-- 3. If we were to remove all interest_id values which are lower than the total_months value 
-- we found in the previous question - how many total data points would we be removing?

with count_month_per_interest as (
     select interest_id, count(distinct month_year) as count_month
	 from interest_metrics
	 group by interest_id
),
id_removed as (
    select interest_id 
	from count_month_per_interest
	where count_month < 14
)

select count(*) as total_record_remove
from interest_metrics
where interest_id in (
     select interest_id
	 from id_removed
);

-- 4. Does this decision make sense to remove these data points from a business perspective?
-- Use an example where there are all 14 months present to a removed interest example for your
-- arguments - think about what it means to have less months present from a segment perspective.

-- Viec co loai bo hay khong phu thuoc vao muc tieu can quan tam, chang han:
--- Neu muc tieu cua viec phan tich la can tim nhung doi tuong interest duoc quan tam dai han
--- thi viec loai bo cac data point la hoan toan co the ---> tap trung vao cac moi quan tam ben vung.
--- Con neu voi muc tieu la quan tam den cac trend ngan han chang han thi viec remove se lam mat mat 
--- thong tin/du lieu.

-- 5. After removing these interests - how many unique interests are there for each month?

with count_month_per_interest as (
     select interest_id, count(distinct month_year) as count_month
	 from interest_metrics
	 group by interest_id
),
id_removed as (
    select interest_id 
	from count_month_per_interest
	where count_month < 14
)

select month_year, 
       count(distinct interest_id) as count_interest_per_month
from interest_metrics
where interest_id not in (
     select interest_id
	 from id_removed
)
group by month_year
order by month_year;

-----------------------------------------------------------------------------------------------------------
-- Segment Analysis
-- 1. Using our filtered dataset by removing the interests with less than 6 months worth of data, 
-- which are the top 10 and bottom 10 interests which have the largest composition values in
-- any month_year? Only use the maximum composition value for each interest but you must keep 
-- the corresponding month_year




-- 2. Which 5 interests had the lowest average ranking value?

with rank_avg as (
     select im.interest_id, i.interest_name,
	        round(avg(im.ranking), 2) as avg_ranking
	 from interest_metrics im join interest_map i on im.interest_id = i.id
	 group by im.interest_id, i.interest_name
),

sort_avg_rank as (
     select interest_id, interest_name, avg_ranking,
	        dense_rank() over(order by avg_ranking asc) as rnk
	 from rank_avg
)

select interest_name, avg_ranking
from sort_avg_rank
where rnk <= 5;


-- 3. Which 5 interests had the largest standard deviation in their percentile_ranking value?



-- 4. For the 5 interests found in the previous question - what was minimum and maximum 
-- percentile_ranking values for each interest and its corresponding year_month value? 
-- Can you describe what is happening for these 5 interests?



-- 5. How would you describe our customers in this segment based off their composition 
-- and ranking values? What sort of products or services should we show to these customers 
-- and what should we avoid?



