CREATE DATABASE passwords;
USE passwords;
CREATE TABLE user_info(
  user_ip SMALLINT (3) NOT NULL,
  first_name varchar(30) NOT NULL,
  last_name varchar(30) NOT NULL ,
  email varchar(75) NOT NULL,
  PRIMARY KEY (user_ip)
);

CREATE TABLE account_entry(
  user_ip SMALLINT(3) NOT NULL,
  website_url VARCHAR(100),
  website_name VARCHAR (100) NOT NULL,
  username varchar(15)NOT NULL,
  user_password VARBINARY(30),
  account_comment VARCHAR (250)NOT NULL,
  time_stamp DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (user_ip, username, website_name)
);

INSERT INTO user_info VALUES (101, "Cleo", "Setori", "cset@yahoo.com");
INSERT INTO user_info VALUES (102, "Emma", "Gilbert", "emgil@yahoo.com");
INSERT INTO user_info VALUES (103, "Rikki", "Chadwick", "rchad@yahoo.com");
INSERT INTO user_info VALUES (104, "Alex", "Russo", "arusso@yahoo.com");
INSERT INTO user_info VALUES (105, "Justin", "Russo","jrusso@yahoo.com");
INSERT INTO user_info VALUES (106, "Max", "Russo", "mrusso@yahoo.com");
INSERT INTO user_info VALUES (107, "Hannah", "Montana", "hmon@yahoo.com");
INSERT INTO user_info VALUES (108, "Raven", "Baxter", "rbax@yahoo.com");
INSERT INTO user_info VALUES (109, "Christopher", "Wilde", "cwilde@yahoo.com");
INSERT INTO user_info VALUES (110, "Izzy", "Daniels", "idaniels@yahoo.com");

INSERT INTO account_entry VALUES (101, "https://www.disneyplus.com","Disney+", "cset",AES_ENCRYPT("red","key"),"password created for Cleo Setori" ,now());
INSERT INTO account_entry VALUES (102, "http://www.sephora.com","Sephora.com","emgil", AES_ENCRYPT("orange","key"),"password created for emgil", now());
INSERT INTO account_entry VALUES (103, "https://www.youtube","YouTube", "rchad",AES_ENCRYPT("yellow","key"), "password created for username rchad",now());
INSERT INTO account_entry VALUES (104, "http://max.com","max.com ","arusso", AES_ENCRYPT("green","key"), "password created for hbomax user: arusso",now());
INSERT INTO account_entry VALUES (105, "http://www.wordpress.com","WordPress.com","jrusso", AES_ENCRYPT("blue","key"),"password created for WordPress user :jrusso" ,now() );
INSERT INTO account_entry VALUES (106, "http://www.amazon.com","amazon.com","mrusso", AES_ENCRYPT("indigo","key"),"new amazon account registered" ,now());
INSERT INTO account_entry VALUES (107, "http://www.paramountplus.com","Paramount Plus","hannahmontana", AES_ENCRYPT("violet","key"), "password created for Paramount Plus user Max Russo",now());
INSERT INTO account_entry VALUES (108, "http://www.bhphotovideo.com","B&H","rbaxter", AES_ENCRYPT("sage","key"),"new account for Raven Baxter" ,now());
INSERT INTO account_entry VALUES (109, "http://www.apple.com","Apple.com","cwilde", AES_ENCRYPT("lavender777","key"), "Apple password for user: cwilde created.",now());
INSERT INTO account_entry VALUES (110, "http://www.soundcloud.com","SoundCloud.com","idaniels", AES_ENCRYPT("dogs1234","key"),"Soundcloud user idaniels has created password.", now());

