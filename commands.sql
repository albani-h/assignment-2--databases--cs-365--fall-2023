--create a new entry into the database--
INSERT INTO user_info VALUES (111, "Jessica","Olsen","jessols@gmail.com" );
INSERT INTO account_entry VALUES (111, "http://www.peacock.com","Peacock","jolsen",AES_ENCRYPT("watchpeacock","key"), "password created for Peacock user: jolsen ",now());

--get password information from all URLS that have https--
  SELECT website_name,website_url,first_name,last_name,username,CAST(AES_DECRYPT(user_password,"key")AS CHAR) AS password, email, time_stamp,account_comment FROM account_entry JOIN user_info WHERE (user_info.user_ip = account_entry.user_ip) AND website_url LIKE "https%";

--get password associated with a specific URL, returns relation with website URL and decrypted password--
SELECT website_url AS URL ,CAST(AES_DECRYPT(user_password,"key")AS CHAR) AS plainpassword FROM account_entry WHERE website_URL="http://www.soundcloud.com";

 --change a URL associated with one of the passwords in your 10 entries associated with a specific password, this is changing website from amazon to spotify for user mrusso because his password is "indigo"--
UPDATE account_entry SET website_url="http://www.spotify.com",website_name="Spotify" WHERE CAST(AES_DECRYPT(user_password,"key")AS CHAR)= "indigo";

 --change any password, in this example I am changing the password of username rchad registered to an account with YouTube --
UPDATE account_entry SET user_password= AES_ENCRYPT("changedpassword","key") WHERE username="rchad" AND website_url="https://www.youtube";

 --remove a URL, in this case I am removing the URL attached to entry paramountplus--
DELETE FROM account_entry WHERE (website_url="http://www.paramountplus.com");

 --remove a password,here it is removing the entry with the user that has the plain text password: "green"--
DELETE FROM account_entry  WHERE CAST(AES_DECRYPT(user_password,"key")AS CHAR)= "indigo";


