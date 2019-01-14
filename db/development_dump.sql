PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO "schema_migrations" VALUES('20181217065335');
INSERT INTO "schema_migrations" VALUES('20181218090259');
INSERT INTO "schema_migrations" VALUES('20181219143720');
INSERT INTO "schema_migrations" VALUES('20181220061345');
INSERT INTO "schema_migrations" VALUES('20181220131443');
INSERT INTO "schema_migrations" VALUES('20181221065617');
INSERT INTO "schema_migrations" VALUES('20181221070212');
INSERT INTO "schema_migrations" VALUES('20181221095015');
INSERT INTO "schema_migrations" VALUES('20181221095805');
INSERT INTO "schema_migrations" VALUES('20181221125914');
INSERT INTO "schema_migrations" VALUES('20181221131844');
INSERT INTO "schema_migrations" VALUES('20181221132154');
INSERT INTO "schema_migrations" VALUES('20181221132547');
INSERT INTO "schema_migrations" VALUES('20181221132700');
INSERT INTO "schema_migrations" VALUES('20181221134032');
INSERT INTO "schema_migrations" VALUES('20181222072555');
INSERT INTO "schema_migrations" VALUES('20181222074637');
INSERT INTO "schema_migrations" VALUES('20181222075656');
INSERT INTO "schema_migrations" VALUES('20181222081002');
INSERT INTO "schema_migrations" VALUES('20181222083813');
INSERT INTO "schema_migrations" VALUES('20181224064147');
INSERT INTO "schema_migrations" VALUES('20181224072620');
INSERT INTO "schema_migrations" VALUES('20181225053807');
INSERT INTO "schema_migrations" VALUES('20181225055854');
INSERT INTO "schema_migrations" VALUES('20181226134043');
INSERT INTO "schema_migrations" VALUES('20181227072338');
INSERT INTO "schema_migrations" VALUES('20181230171009');
INSERT INTO "schema_migrations" VALUES('20190103073328');
INSERT INTO "schema_migrations" VALUES('20190103090135');
INSERT INTO "schema_migrations" VALUES('20190103122952');
INSERT INTO "schema_migrations" VALUES('20190104132604');
INSERT INTO "schema_migrations" VALUES('20190104142147');
INSERT INTO "schema_migrations" VALUES('20190106150700');
INSERT INTO "schema_migrations" VALUES('20190108123201');
INSERT INTO "schema_migrations" VALUES('20190108124320');
INSERT INTO "schema_migrations" VALUES('20190108132848');
INSERT INTO "schema_migrations" VALUES('20190110151945');
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "ar_internal_metadata" VALUES('environment','development','2018-12-17 06:55:59.315432','2018-12-17 06:55:59.315432');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "collections" ("id" integer NOT NULL PRIMARY KEY, "collection_name" varchar DEFAULT NULL, "release_time" date DEFAULT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "picture" varchar DEFAULT NULL);
INSERT INTO "collections" VALUES(1,'All Products','2010-01-01','2018-12-20 06:45:30.653345','2018-12-20 06:45:30.653345','collections/all-products.png');
INSERT INTO "collections" VALUES(2,'Art Baby Collection','2015-09-01','2018-12-20 06:45:30.666569','2018-12-20 06:45:30.666569','collections/art-baby-collection.png');
INSERT INTO "collections" VALUES(3,'Classic Collection','2010-01-01','2018-12-20 06:45:30.678273','2018-12-20 06:45:30.678273','collections/classic-collection.png');
INSERT INTO "collections" VALUES(4,'Color Me In Collection','2016-01-01','2018-12-20 06:45:30.687932','2018-12-20 06:45:30.687932','collections/color-me-in-collection.png');
INSERT INTO "collections" VALUES(5,'Heatwave Collection','2017-03-01','2018-12-20 06:45:30.699326','2018-12-20 06:45:30.699326','collections/heatwave-collection.png');
INSERT INTO "collections" VALUES(6,'Influencer Collection','2018-01-01','2018-12-20 06:45:30.709545','2018-12-20 06:45:30.709545','collections/influencer-collection.png');
INSERT INTO "collections" VALUES(7,'Monochrome Graffiti Collection','2018-07-01','2018-12-20 06:45:30.721099','2018-12-20 06:45:30.721099','collections/monochrome-graffiti-collection.png');
INSERT INTO "collections" VALUES(8,'Pop Art Collection','2017-09-01','2018-12-20 06:45:30.732795','2018-12-20 06:45:30.732795','collections/pop-art-collection.png');
INSERT INTO "collections" VALUES(9,'Teen Spirit Collection','2015-03-01','2018-12-20 06:45:30.742760','2018-12-20 06:45:30.742760','collections/teen-spirit-collection.png');
INSERT INTO "collections" VALUES(10,'Weekend Getaway Collection','2016-03-01','2018-12-20 06:45:30.751802','2018-12-20 06:45:30.751802','collections/weekend-getaway-collection.png');
INSERT INTO "collections" VALUES(11,'Woman Girl Collection','2017-09-01','2018-12-20 06:45:30.762652','2018-12-20 06:45:30.762652','collections/woman-girl-collection.png');
CREATE TABLE "products" ("id" integer NOT NULL PRIMARY KEY, "product_name" varchar DEFAULT NULL, "price" decimal DEFAULT NULL, "description_short" text DEFAULT NULL, "description_long" text DEFAULT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "collection_id" integer, "size_contracted" varchar, "size_extended" varchar, "size_strap" varchar, "detail_style" varchar, "detail_material" varchar, "string" varchar, "detail_cleaning" varchar, "detail_capacity" varchar, "size_hand_drop" integer, "image" varchar);
INSERT INTO "products" VALUES(1,'Art Baby Pink Purse',36,'JumpFromPaper X Art Baby Collection','
    Pink is not just a color! It''s an attitude!<br>
    Let''s show people your chic cartoon style! ','2018-12-24 09:03:16.315143','2018-12-24 09:03:16.315143',2,'11 x 22 x 2','11 x 22 x 3','','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Scrub your bag gently with clean water, or diluted / mild detergent','Credit cards, Banknote, Coins',NULL,'products/art-baby/Art-Baby-Backpack.jpg');
INSERT INTO "products" VALUES(2,'Art Baby Backpack',128,'JumpFromPaper Cartoon Backpack ','Pink is not just a color! It''s an attitude!<br>

The pink cartoon backpack has enough space for your MacBook Air 13", water bottle, and other essential items. <br>

Let''s show everyone your chic cartoon style! ','2018-12-24 09:03:16.329403','2018-12-24 09:03:16.329403',2,'36 x 39.5 x 2','36 x 39.5 x 11','42.5 - 64.5','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Scrub your bag gently with clean water, or diluted / mild detergent','MacBook Air 13",  A4 Size Books, Water Bottle',NULL,'products/art-baby/Art-Baby-Pink-Purse.jpg');
INSERT INTO "products" VALUES(3,'Cheese Orange Shoulder Bag',80,'JumpFromPaper Cheese Camera Bag','The bag is big enough to hold your digital camera and phone. <br>

Record everything special in your daily life. <br>

It''s also the unique cartoon gift for people who love to travel. ','2018-12-24 09:03:16.347182','2018-12-24 09:03:16.347182',3,'33.5 x 27.5 x 2','33.5 x 27.5 x 2','71 - 140','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Scrub your bag gently with clean water, or diluted / mild detergent','Phone, Digital Camera',NULL,'products/classic/Cheese-Orange-Shoulder-Bag.jpg');
INSERT INTO "products" VALUES(4,'Turquoise Spaceman Backpack',120,'JumpFromPaper Classic Cartoon Backpack','The cartoon bag is specifically designed to keep your MacBook Air 13", A4 books and water bottle safe. <br>

The unique and stylish cartoon bag can easily go with any style.  <br>

Wear the turquoise backpack and go exploring.','2018-12-24 09:03:16.361606','2018-12-24 09:03:16.361606',3,'36 x 39.5 x 2','36 x 39.5 x 11','42.5 - 64.5','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester Bags',NULL,'Scrub your bag gently with clean water, or diluted / mild detergent','MacBook Air 13", A4 Size Book',NULL,'products/classic/Turquoise-Spaceman-Backpack.jpg');
INSERT INTO "products" VALUES(5,'Red Checked Handbag',90,'Summer Plaid X Cartoon Style','The red handbag can be carried by either of its adjustable strap or chic handle. <br>

And, it has enough space to hold your make-up, phone, and wallet. <br>

Start your weekend with a cute cartoon style.','2018-12-24 09:03:16.380936','2018-12-24 09:03:16.380936',3,'24.5 x 29.5 x 2','24.5 x 29.5 x 8','40 - 78','Pop Art Bag, 2D Bag, Cartoon bag','PVC / Polyester',NULL,'Scrub your bag gently with clean water, or diluted / mild detergent','B6 Size Note, Phone, Credit Cards',5,'products/classic/Red-Checked-Handbag.jpg');
INSERT INTO "products" VALUES(6,'Adventure Pink Backpack',110,'JumpFromPaper Adventure Cartoon Backpack<br>
Chic, Adorable, Unique ','The pink cartoon backpack is specifically designed to keep your MacBook Pro 13", other digital devices and water bottle safe. <br>

Take the cartoon backpack anywhere and let your adventure begin. ','2018-12-24 09:03:16.394655','2018-12-24 09:03:16.394655',3,'32.6 x 42.8 x 2','32.6 x 42.8 x 11.5','42.5 - 64.5','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester Bags',NULL,'Scrub your bag gently with clean water, or diluted / mild detergent','A4 size, MacBook Pro 13", Phone, Wallet',NULL,'products/classic/Adventure-Pink-Backpack.jpg');
INSERT INTO "products" VALUES(7,'Adventure Red Backpack',110,'JumpFromPaper Adventure Cartoon Backpack <br>
Bold, Colorful, Cool','The red cartoon backpack is specifically designed to keep your MacBook Pro 13", other digital devices and water bottle safe. <br>
    Take the cartoon backpack anywhere. <br>

A great adventure is waiting for you.

','2018-12-24 09:03:16.409501','2018-12-24 09:03:16.409501',3,'32.6 x 42.8 x 2','32.6 x 42.8 x 11.5','','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester Bags',NULL,'Scrub your bag gently with clean water, or diluted / mild detergent','A4 size, MacBook Pro 13", iPhone',NULL,'products/classic/Cheese-Orange-Shoulder-Bag.jpg');
INSERT INTO "products" VALUES(8,'Giggle Pink Shoulder Bag',70,'Cute, Sweet, Charming','The pink cartoon bag has just enough space for wallet, phone, and other essential items. <br>

With adjustable straps and colorful outlook, the bag shows that style is your priority. <br>

It''s perfect for an afternoon tea, dinner date, and shopping.','2018-12-24 09:03:16.425287','2018-12-24 09:03:16.425287',3,'27.5 x 23 x 2','27.5 x 23 x 8','95 - 145','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Wallet + Phone + Notes + Car Key + Lipsticks',NULL,'products/classic/Giggle-Pink-Shoulder-Bag.jpg');
INSERT INTO "products" VALUES(9,'Blue Checked Backpack',110,'Summer Plaid X Cartoon Style <br>
Keep Things Simple','The blue plaid patterns are perfectly suited for a beach trip. <br>

And, the cartoon backpack has just enough space to hold your sunscreen, hat, phone, and wallet.<br>

Start your weekend with the cute cartoon style.','2018-12-24 09:03:16.438551','2018-12-24 09:03:16.438551',3,'32.2 x 42.9 x 2','32.2 x 42.9 x 10','42.5 - 64.6','Pop Art Bag, 2D Bag, Cartoon bag','PVC / Polyester',NULL,'Scrub your bag gently with clean water, or diluted / mild detergent','Sunscreen, Hat, Sunglasses, Wallet, Phone',NULL,'products/classic/Giggle-Pink-Shoulder-Bag.jpg');
INSERT INTO "products" VALUES(10,'Dark Blue Checked Handbag',90,'Summer Plaid X Cartoon Style','The dark blue handbag can be carried by either of its adjustable strap or chic handle. <br>

And, it has enough space to hold your make-up, phone, and wallet. <br>

Start your weekend with a cute cartoon style.','2018-12-24 09:03:16.454410','2018-12-24 09:03:16.454410',3,'24.5 x 29.5 x 2','24.5 x 29.5 x 8','40 - 78','Pop Art Bag, 2D Bag, Cartoon bag','PVC / Polyester',NULL,'Scrub your bag gently with clean water, or diluted / mild detergent','B6 Size Note, Phone, Credit Cards',5,'products/classic/Dark-Blue-Checked-Handbag.jpg');
INSERT INTO "products" VALUES(11,'Spotlight Yellow Purse',40,'Classic Spotlight Cartoon Purse_Yellow','Simple design makes everything better. <br> 

The cartoon trend is here for summer. <br>

Catch everyone''s attention with our unique spotlight purse.','2018-12-24 09:03:16.470283','2018-12-24 09:03:16.470283',3,'22 x 11 x 2','22x 11 x 3','','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Credit Cards, Coins, Checks',NULL,'products/classic/Spotlight-Yellow-Purse.jpg');
INSERT INTO "products" VALUES(12,'Blue Checked Handbag',90,'Summer Plaid X Cartoon Style','The light blue handbag can be carried by either of its adjustable strap or chic handle. <br>

And, it has enough space to hold your make-up, phone, and wallet.<br>

Start your weekend with cartoon style.','2018-12-24 09:03:16.486848','2018-12-24 09:03:16.486848',3,'24.5 x 29.5 x 2','24.5 x 29.5 x 8','40 - 78','Pop Art Bag, 2D Bag, Cartoon bag','PVC / Polyester',NULL,'Scrub your bag gently with clean water, or diluted / mild detergent','B6 Size Notes, Phone, Wallet',5,'products/classic/Blue-Checked-Handbag.jpg');
INSERT INTO "products" VALUES(13,'Junior Watermelon Red Spaceman Backpack',105,'The cartoon backpack for petite women and kids.','Nothing says summer like the watermelon red cartoon backpack. <br>

Equipped with the shoulder strap pads and breathable fabric, the red backpack is perfect for comfort. <br>

It has enough space for iPad, iPhone, car key and other personal items.  <br>

Let''s show people your summer style!','2018-12-24 09:03:16.501833','2018-12-24 09:03:16.501833',4,'30.4 x 34.3 x 3','30.4 x 34.3 x 10','38 - 85','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only.Ask a professional to clean','Phone + iPad + Car Key + Notes',NULL,'products/color-me-in/Junior-Watermelon-Red-Spaceman-Backpack.jpg');
INSERT INTO "products" VALUES(14,'Cheese Sky Blue Messenger Bag',90,'JumpFromPaper Cheese Camera Bag','A little vintage shape and sky & cloud patterns are perfectly suited for an afternoon stroll. <br>

It''s big enough to hold your camera, phone, and other personal items. <br>

Wear the sky messenger bag and dream on.','2018-12-24 09:03:16.514601','2018-12-24 09:03:16.514601',4,'33 x 27.5 x 2','33 x 27.5 x 7.5','70 - 140','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Phone, Digital Camera',NULL,'products/color-me-in/Cheese-Sky-Blue-Messenger-Bag.jpg');
INSERT INTO "products" VALUES(15,'Giggle Minion Yellow Shoulder Bag',75,'Add more yellow to your life.','The cheerfullest color of this summer. <br>

The minion yellow cartoon bag has enough space for wallet, phone, and other essential items. <br>



With adjustable straps and colorful outlook, the bag shows that style is your priority.<br>

It''s a perfect match for your ice creams, bathing suits, denim, and sunglass. ','2018-12-24 09:03:16.530016','2018-12-24 09:03:16.530016',4,'28 x 23 x 2','28 x 23 x 8','95 - 145','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Wallet + Phone +  Cart Key + Notes + Lipsticks',NULL,'products/color-me-in/Giggle-Minion-Yellow-Shoulder-Bag.jpg');
INSERT INTO "products" VALUES(16,'Junior Airy Blue Spaceman Backpack',105,'The cartoon backpack for petite women and kids.','Comfort, Fresh, Unique. <br>

Equipped with the shoulder strap pads and breathable fabric, the blue backpack is perfect for comfort. <br>

It has enough space for iPad, iPhone, car key and other personal items.  <br>

Let''s show people your summer style!','2018-12-24 09:03:16.543590','2018-12-24 09:03:16.543590',4,'30.4 x 34.3 x 3','30.4 x 34.3 x 10','38 - 85','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Phone + iPad +  Car Key + Notes',NULL,'products/color-me-in/Junior-Airy-Blue-Spaceman-Backpack.jpg');
INSERT INTO "products" VALUES(17,'Airy Blue Spaceman Backpack',125,'Comfort, Fresh, Unique','The airy blue cartoon backpack is big enough for MacBook Pro 13", A4 size books, and other essential items. <br>

Equipped with the shoulder strap pads and breathable fabric, it''s perfect for a cozy summer.','2018-12-24 09:03:16.556598','2018-12-24 09:03:16.556598',4,'36 x 39.5 x 3','36 x 39.5 x 11','42.5 - 85','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','MacBook Pro 13" + Headphones + Phone + Wallet + A4 Size Notes + Water Bottle',NULL,'products/color-me-in/Airy-Blue-Spaceman-Backpack.jpg');
INSERT INTO "products" VALUES(18,'Giggle Watermelon Red Shoulder Bag',75,'Summer''s here! ','It''s not red. It''s not pink. It''s watermelon red. <br>

One of the fabulous colors for this summer. <br>

It''s perfect for a weekend trip, city exploration, and daily commute.','2018-12-24 09:03:16.572218','2018-12-24 09:03:16.572218',4,'28 x 23 x 2','28 x 23 x 8','95 - 145','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Wallet + Phone + Notes + Car Key + Lipsticks',NULL,'products/color-me-in/Giggle-Watermelon-Red-Shoulder-Bag.jpg');
INSERT INTO "products" VALUES(20,'Cactus Green Backpack',210,'JumpFromPaper X The Rodnik Band Collection<br>
    Cartoon Bag Meets Pop Art Style Adventure','It comes in polyester with adjustable straps, depicting a green cactus with yellow spikes. <br>

And, it has enough space for iPad, phone, and other personal items. <br>

Let''s catch people''s eyes by the coolest cactus of the year. <br>

Check cactus street style inspiration: <a href="https://www.jumpfrompaper.com/blogs/news/2018-coolest-cactus-look" here. /a>  ','2018-12-24 09:03:16.598159','2018-12-24 09:03:16.598159',4,'42.5 x 40 x10','42.5 x 40 x 10','41 - 81.5','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','iPad Pro 10.5" + Phone + Wallet + Car Key ',NULL,'products/color-me-in/Cactus-Green-Backpack.jpg');
INSERT INTO "products" VALUES(21,'Spotlight Airy Blue Purse',40,'Classic Spotlight Cartoon Purse_Airy Blue','Simple design makes everything better.  <br>

The cartoon trend is here for summer. <br>

Catch everyone''s attention with our unique spotlight purse.','2018-12-24 09:03:16.611513','2018-12-24 09:03:16.611513',4,'22x 11 x 2','22x 11 x 3','','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Credit Cards, Coins, Checks',NULL,'products/color-me-in/Spotlight-Airy-Blue-Purse.jpg');
INSERT INTO "products" VALUES(22,'Junior Minion Yellow Spaceman Backpack',105,'The cartoon backpack for petite women and kids.','Cool, Young, Energetic. <br>

Equipped with the shoulder strap pads and breathable fabric, the yellow backpack is perfect for comfort. <br>

It has just enough space for iPad, iPhone, car key and other personal items.  <br>

Let''s show people your unique style!','2018-12-24 09:03:16.626478','2018-12-24 09:03:16.626478',4,'30.4 x 34.3 x 3','30.4 x 34.3 x 10','38 - 85','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Phone + iPad + Car Key + Notes',NULL,'products/color-me-in/Junior-Minion-Yellow-Spaceman-Backpack.jpg');
INSERT INTO "products" VALUES(23,'Junior Giggle Airy Blue Shoulder Bag',65,'Lighten up! <br>
Carry just the essentials!','The color of the sky. The color of the sea. The color of summer air.<br>

The perfect bag to keep you cool in the heatwave. ','2018-12-24 09:03:16.641187','2018-12-24 09:03:16.641187',4,'24 x 19.5 x 2','24 x 19.5 x 7','90 - 125','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Car Key + Phone + Lipsticks + Credit Cards',NULL,'products/color-me-in/Junior-Giggle-Airy-Blue-Shoulder-Bag.jpg');
INSERT INTO "products" VALUES(24,'Junior Giggle Minion Yellow Shoulder Bag',65,'Lighten up! <br>
Carry just the essentials!','Add more yellow to your life.<br>

The happiest and cutest color of this summer. <br>

The bag shows that style is your priority.','2018-12-24 09:03:16.653845','2018-12-24 09:03:16.653845',4,'24 x 19.5 x 2','24 x 19.5 x 7','90 - 125','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Lipsticks + Phone + Credit Cards + Car Key.',NULL,'products/color-me-in/Junior-Giggle-Minion-Yellow-Shoulder-Bag.jpg');
INSERT INTO "products" VALUES(25,'Watermelon Red Spaceman Backpack',125,'Nothing says summer like the watermelon red cartoon backpack. ','The backpack is big enough for MacBook Pro 13", A4 size books, and other digital devices. <br>

Equipped with the shoulder strap pads and breathable fabric, it''s perfect for comfort.<br>

Also, It can easily go with any white T-shirt, denim accessory, and swimsuits.  ','2018-12-24 09:03:16.669152','2018-12-24 09:03:16.669152',4,'36 x 39.5 x 3','36 x 39.5 x 11','42.5 - 85','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','MacBook Pro 13" + Headphones + Phone + Wallet + Water Bottle + A4 Size Notes',NULL,'products/color-me-in/Watermelon-Red-Spaceman-Backpack.jpg');
INSERT INTO "products" VALUES(26,'Spotlight Watermelon Red Purse',40,'Classic Spotlight Cartoon Purse_Watermelon','Simple design makes everything better.  

The cartoon trend is here for summer. 

Catch everyone''s attention with our unique spotlight purse.','2018-12-24 09:03:16.682251','2018-12-24 09:03:16.682251',4,'22 x 11 x 2','22 x 11 x 3','','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Credit Cards, Coins, Checks ',NULL,'products/color-me-in/Spotlight-Watermelon-Red-Purse.jpg');
INSERT INTO "products" VALUES(27,'Minion Yellow Spaceman Backpack',125,'Cool, Young, Energetic. ','The Minion Yellow backpack is big enough for MacBook Pro 13", A4 size books, and other digital devices. <br>

Equipped with the shoulder strap pads and breathable fabric, it''s perfect for comfort. <br>

It''s also your good companion for commuting, traveling and hiking. ','2018-12-24 09:03:16.694675','2018-12-24 09:03:16.694675',4,'36 x 39.5 x 3','36.x 39.5x 11','42.5 - 85','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','MacBook Pro 13" + Headphones + Wallet + Phone + A4 Size Notes + Water Bottle',NULL,'products/color-me-in/Minion-Yellow-Spaceman-Backpack.jpg');
INSERT INTO "products" VALUES(28,'Spotlight Yellow Purse',40,'Classic Spotlight Cartoon Purse_Yellow','Simple design makes everything better.  <br>

The cartoon trend is here for summer. <br>

Catch everyone''s attention with our unique spotlight purse.','2018-12-24 09:03:16.708417','2018-12-24 09:03:16.708417',4,'22 x 11 x 2','22x 11 x 3','','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Credit Cards, Coins, Checks ',NULL,'products/color-me-in/Spotlight-Yellow-Purse.jpg');
INSERT INTO "products" VALUES(29,'Poketto Airy Blue Wallet',35,'Enjoy the simple 2D design in life. ','An airy blue cartoon wallet is your personal statement of style.','2018-12-24 09:03:16.722932','2018-12-24 09:03:16.722932',4,'11 x 13 x 2','11 x 13 x 3','','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Credit cards, Banknote, Coins',NULL,'products/color-me-in/Poketto-Airy-Blue-Wallet.jpg');
INSERT INTO "products" VALUES(30,'Poketto Watermelon Red Wallet',35,'Enjoy the simple 2D design in life. ','A watermelon red cartoon wallet is your personal statement of style.','2018-12-24 09:03:16.735112','2018-12-24 09:03:16.735112',4,'11 x 13 x 2','11 x 13 x 3','','Pop Art Bag, 2D Bag, Cartoon Bag','Polyester',NULL,'Dry clean only. Ask a professional to clean','Credit cards, Banknote, Coins',NULL,'products/color-me-in/Poketto-Watermelon-Red-Wallet.jpg');
CREATE TABLE "line_items" ("id" integer NOT NULL PRIMARY KEY, "product_id" integer DEFAULT NULL, "cart_id" integer DEFAULT NULL, "price" decimal DEFAULT NULL, "quantity" integer DEFAULT 1, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "total" decimal, "order_id" integer);
CREATE TABLE "carts" ("id" integer NOT NULL PRIMARY KEY, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "carts" VALUES(1,'2019-01-10 10:16:23.704578','2019-01-10 10:16:23.704578');
INSERT INTO "carts" VALUES(2,'2019-01-10 14:09:28.636405','2019-01-10 14:09:28.636405');
INSERT INTO "carts" VALUES(3,'2019-01-10 14:40:21.702856','2019-01-10 14:40:21.702856');
INSERT INTO "carts" VALUES(4,'2019-01-10 16:06:16.663170','2019-01-10 16:06:16.663170');
INSERT INTO "carts" VALUES(5,'2019-01-11 17:29:23.741485','2019-01-11 17:29:23.741485');
CREATE TABLE "orders" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "description" text, "total" decimal, "shipping_fee" decimal, "comments" text, "process" varchar, "return" varchar, "account" varchar);
CREATE TABLE "contact_infos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar, "first_name" varchar, "last_name" varchar, "address" varchar, "building_optional" varchar, "city" varchar, "country" varchar, "province" varchar, "post_code" varchar, "phone" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "order_id" integer, "cart_id" integer);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('contact_infos',15);
INSERT INTO "sqlite_sequence" VALUES('orders',36);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE INDEX "index_products_on_collection_id" ON "products" ("collection_id");
CREATE INDEX "index_line_items_on_product_id" ON "line_items" ("product_id");
CREATE INDEX "index_line_items_on_cart_id" ON "line_items" ("cart_id");
CREATE INDEX "index_contact_infos_on_order_id" ON "contact_infos" ("order_id");
CREATE INDEX "index_contact_infos_on_cart_id" ON "contact_infos" ("cart_id");
CREATE INDEX "index_line_items_on_order_id" ON "line_items" ("order_id");
COMMIT;
