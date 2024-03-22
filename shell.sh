# Completely remove any previous config
sudo apt remove --purge mysql*
sudo apt autoremove
sudo find / -iname mysql

# install the server
sudo apt update
sudo apt install mysql-server
# run the wizard
sudo mysql_secure_installation
sudo mysql
mysql> use mysql;
mysql> SELECT user,authentication_string,plugin,host FROM mysql.user;

# enable password login
mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'password';
mysql> FLUSH PRIVILEGES;
mysql> exit;

# should be able to login with password now
mysql -u root -p
Enter password:

mysql>