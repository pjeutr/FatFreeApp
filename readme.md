#aangepaste fatfree demo

wget -E -H -k -K -p https://www.maaslandgroep.nl/

sqlite3 db/cms.db

## inlog in app/config.ini

##draait op sqlite
##controller.php:27 staat switch voor mysql
##cms.db assets tmp moeten chown apache 
