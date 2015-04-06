brew cask install android-studio;
brew cask install dropbox;
brew cask install google-chrome;
brew cask install evernote;
brew cask install sequel-pro;
brew cask install kindle;
brew tap caskroom/versions;
brew cask install sublime-text3;
brew install mysql;

# # generate ssh
# ssh-keygen -t rsa -C "tatavo.senna@gmail.com"

# # python / django
curl -o get-pip.py https://bootstrap.pypa.io/get-pip.py;
python get-pip.py;
sudo pip install virtualenv;

# projects
cd ~
mkdir Projects;
mkdir .virtualenvs;
mysql.server start

# Ansible
brew install ansible;


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
source ~/.virtualenvs/agile2/bin/activate
cd blended_api
pip install -r requirements.txt;
mysql -u root -e "CREATE DATABASE IF NOT EXISTS blended";
cp ~/instala_help_files/agile_local_settings.py ~/Projects/blended_api/blended/local_settings.py
python manage.py syncdb --noinput;
python manage.py migrate;

#wizard of odds
cd ~/Projects
git clone git@github.com:eoch-github/wizard_of_odds.git;
virtualenv ~/.virtualenvs/woo;
source /~/.virtualenvs/woo/bin/activate
cd wizard_of_odds/app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
pip intall -r requirements.txt

#apliquei
cd ~Projects
virtualenv /Users/tatavo/.virtualenvs/apliquei;
git clone git@github.com:parafernalia/apliquei.git;
source ~/.virtualenvs/agile2/bin/activate
export $PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
pip install -r requirements.txt




