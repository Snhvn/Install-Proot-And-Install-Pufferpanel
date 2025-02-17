mysql -u root -p
  CREATE USER 'mythicaldash'@'127.0.0.1' IDENTIFIED BY 'yourPassword';
  CREATE DATABASE mythicaldash;
  GRANT ALL PRIVILEGES ON mythicaldash.* TO 'mythicaldash'@'127.0.0.1' WITH GRANT OPTION;
  exit
cd /var/www/mythicaldash
  dos2unix arch.bash
  bash arch.bash
  chmod +x ./MythicalDash
  ./MythicalDash -environment:newconfig # Generate a custom config file
  ./MythicalDash -key:generate # Reset the encryption key
  ./MythicalDash -environment:database # Setup the database connection
  ./MythicalDash -migrate # Migrate the database
  ./MythicalDash -environment:setup # Start a custom setup for the dash
