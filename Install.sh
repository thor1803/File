sudo apt install apache2
sudo apt install apt-transport-https lsb-release
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg # Download the signing key
sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list' # Add Ondrej's repo to sources list.
sudo apt update
sudo apt upgrade
dpkg -l | grep php | tee packages.txt
sudo apt install php7.3 php7.3-common php7.3-cli
sudo apt install php7.3-bcmath php7.3-bz2 php7.3-curl php7.3-gd php7.3-intl php7.3-json php7.3-mbstring php7.3-readline php7.3-xml php7.3-zip
sudo apt install php7.3-fpm
sudo apt install libapache2-mod-php7.3
sudo apt install mariadb-server mariadb-client
sudo apt install mysql-server mysql-client
sudo apt install phpmyadmin
sudo apt install git-core
sudo git clone https://github.com/bakufu123/FUT19-Buyer-Private-masterxxxxxxx.git /var/www/buyer
cd /var/www/buyer
sudo bash setup.sh
sudo nano /var/www/buyer/app/Providers/AppServiceProvider.php

"
use Illuminate\Support\Facades\Schema;

public function boot()
{
    Schema::defaultStringLength(191);
}
"

grant all privileges on *.* to 'phpmyadmin'@'localhost';
