ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
brew doctor;
brew install node
brew install caskroom/cask/brew-cask;
brew cask install android-studio;
brew cask install dropbox;
brew cask install google-chrome;
brew cask install evernote;
brew cask install sequel-pro;
brew cask install kindle;
brew tap caskroom/versions;

brew install mysql;
brew cask intall pgadmin3

#sublime-text3
brew cask install sublime-text3;
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
git@github.com:alek-sys/sublimetext_indentxml.git


# cocoa pods
sudo gem install cocoapods

#haml sass e cia
sudo gem install haml
sudo gem install compass

# # generate ssh
# ssh-keygen -t rsa -C "tatavo.senna@gmail.com"

# # python / django
# curl -o get-pip.py https://bootstrap.pypa.io/get-pip.py;
# sudo python get-pip.py;
sudo pip install virtualenv;

#ansible
git clone git://github.com/ansible/ansible.git --recursive
sudo pip install paramiko PyYAML Jinja2 httplib2 six


# projects
cd ~
mkdir Projects;
mkdir .virtualenvs;
mysql.server start


# # agile
virtualenv /Users/tatavo/.virtualenvs/agile2;
cd Projects
git clone git@github.com:parafernalia/agile2.git;
source /Users/tatavo/.virtualenvs/agile2/bin/activate
cd agile2/app
git submodule init;
git submodule update;
pip install -r requirements.txt;
pip install -r dev_requirements.txt;
mysql -u root -e "CREATE DATABASE IF NOT EXISTS agile";
cp ~/instala_help_files/agile_local_settings.py ~/Projects/agile2/app/parafagile/local_settings.py
python manage.py syncdb --noinput;
python manage.py migrate;
sudo sh -c "echo '\n127.0.0.1 agiledev.parafernalia.net.br\n' >> /etc/hosts"

# blended
cd Projects
git clone git@github.com:parafernalia/blended_api.git;
git clone git@github.com:parafernalia/blended_app.git;
virtualenv /Users/tatavo/.virtualenvs/blended;
source ~/.virtualenvs/blended/bin/activate
cd blended_api
git remote add pearson ssh://homolog.blended.ezlearn.com.br/var/git/blended-homolog.git
cat ~/instala_help_files/blended_repository_auth.txt  >> ~/.ssh/config
pip install -r requirements.txt;
mysql -u root -e "CREATE DATABASE IF NOT EXISTS blended";
cp ~/instala_help_files/agile_local_settings.py ~/Projects/blended_api/blended/local_settings.py
python manage.py syncdb --noinput;
python manage.py migrate;

#wizard of odds
cd ~/Projects
mkdir wod;
cd wod;
virtualenv python_environment;
source python_environment/bin/activate
git clone git@github.com:eoch-github/wizard_of_odds.git;
cd wizard_of_odds/app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
createdb woo
sed -e 's/username=""/username="tatavo"/' -e 's/database=""/database="woo"/' settings_local.py.example > settings_local.py
pip install -r requirements.txt
make run_migration

#apliquei
cd ~/Projects
mkdir wod;
cd wod;
virtualenv python_environment;
source python_environment/bin/activate
git clone git@github.com:eoch-github/wizard_of_odds.git;
cd wizard_of_odds/app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
createdb apliquei
echo DATABASES = { > local_settings.py ;
echo    'default': { >> local_settings.py ;
echo        'ENGINE': 'django.db.backends.postgresql_psycopg2', >> local_settings.py ;
echo        'HOST': '127.0.0.1', >> local_settings.py ;
echo        'NAME':'apliquei', >> local_settings.py ;
echo        'USER':'tatavo', >> local_settings.py ;
echo        'PASSWORD':'mikaju38', >> local_settings.py ;
echo        'PORT':'5432' >> local_settings.py ;
echo    } >> local_settings.py ;
echo } >> local_settings.py ;
sed -e 's/username=""/username="tatavo"/' -e 's/database=""/database="woo"/' settings_local.py.example > settings_local.py
pip install -r requirements.txt
make run_migration


