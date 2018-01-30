#!/usr/bin/env bash

# ~/pydata.sh

# Make sure brew and cask is available
source ./brew.sh

# Install Python
brew install python
brew install python3
# Removed user's cached credentials
# This script might be run with .dots, which uses elevated privileges
sudo -K

echo "------------------------------"
echo "Setting up pip."

# Install pip
easy_install pip

###############################################################################
# Virtual Enviroments                                                         #
###############################################################################

echo "------------------------------"
echo "Setting up virtual environments."

# Install virtual environments globally
# It fails to install virtualenv if PIP_REQUIRE_VIRTUALENV was true
export PIP_REQUIRE_VIRTUALENV=false
pip install virtualenv
pip install virtualenvwrapper

echo "------------------------------"
echo "Source virtualenvwrapper from ~/.extra"

EXTRA_PATH=~/.extra
echo $EXTRA_PATH
echo "" >> $EXTRA_PATH
echo "" >> $EXTRA_PATH
echo "# Source virtualenvwrapper, added by pydata.sh" >> $EXTRA_PATH
echo "export WORKON_HOME=~/.virtualenvs" >> $EXTRA_PATH
echo "source /usr/local/bin/virtualenvwrapper.sh" >> $EXTRA_PATH
echo "" >> $BASH_PROFILE_PATH
source $EXTRA_PATH

###############################################################################
# Python 2 Virtual Enviroment                                                 #
###############################################################################

echo "------------------------------"
echo "Setting up py2-data virtual environment."

# Create a Python2 data environment
mkvirtualenv py2-data
workon py2-data

# Install Python data modules
pip install numpy
pip install scipy
pip install matplotlib
pip install pandas
pip install sympy
pip install nose
pip install unittest2
pip install seaborn
pip install scikit-learn
pip install "ipython[all]"
pip install bokeh
pip install Flask
pip install sqlalchemy
pip install mysql-python
pip install boto
pip install awscli
pip install mrjob
pip install s3cmd

# hook up the aws cli autocomplete for Python 2
EXTRA_PATH=~/.extra
echo $EXTRA_PATH
echo "" >> $EXTRA_PATH
echo "" >> $EXTRA_PATH
echo "# Configure aws cli autocomplete, added by aws.sh" >> $EXTRA_PATH
echo "complete -C '~/.virtualenvs/py2-data/bin/aws_completer' aws" >> $EXTRA_PATH
source $EXTRA_PATH


###############################################################################
# Python 3 Virtual Enviroment                                                 #
###############################################################################

echo "------------------------------"
echo "Setting up py3-data virtual environment."

# Create a Python3 data environment
mkvirtualenv --python=/usr/local/bin/python3 py3-data
workon py3-data

# Install Python data modules
pip install numpy
pip install scipy
pip install matplotlib
pip install pandas
pip install sympy
pip install nose
pip install unittest2
pip install seaborn
pip install scikit-learn
pip install "ipython[all]"
pip install bokeh
pip install Flask
pip install sqlalchemy
pip install mysqlclient
pip install boto
pip install awscli

# hook up the aws cli autocomplete for Python 3
EXTRA_PATH=~/.extra
echo $EXTRA_PATH
echo "" >> $EXTRA_PATH
echo "" >> $EXTRA_PATH
echo "# Configure aws cli autocomplete, added by aws.sh" >> $EXTRA_PATH
echo "complete -C '~/.virtualenvs/py3-data/bin/aws_completer' aws" >> $EXTRA_PATH
source $EXTRA_PATH

###############################################################################
# Install IPython Profile
###############################################################################

echo "------------------------------"
echo "Installing IPython Notebook Default Profile"

# Add the IPython profile
mkdir -p ~/.ipython
cp -r init/profile_default/ ~/.ipython/profile_default

echo "------------------------------"
echo "Script completed."
echo "Usage: workon py2-data for Python2"
echo "Usage: workon py3-data for Python3"


# Lxml and Libxslt
brew install libxml2
brew install libxslt
brew link libxml2 --force
brew link libxslt --force


###############################################################################
# Install IPython Notebook Spark Integration
###############################################################################
brew install apache-spark

echo "------------------------------"
echo "Installing IPython Notebook Spark integration"

# Add the pyspark IPython profile
cp -r init/profile_pyspark/ ~/.ipython/profile_pyspark

BASH_PROFILE_PATH=~/.bash_profile
echo $BASH_PROFILE_PATH
echo "" >> $BASH_PROFILE_PATH
echo "" >> $BASH_PROFILE_PATH
echo "# IPython Notebook Spark integration, added by aws.sh" >> $BASH_PROFILE_PATH
# Run $ brew info apache-spark to determine the Spark install location
echo "export SPARK_HOME='/usr/local/Cellar/apache-spark/1.4.1'" >> $BASH_PROFILE_PATH
echo "# Appending pyspark-shell is needed for Spark 1.4+" >> $BASH_PROFILE_PATH
echo "export PYSPARK_SUBMIT_ARGS='--master local[2] pyspark-shell'" >> $BASH_PROFILE_PATH
echo "" >> $BASH_PROFILE_PATH
source $BASH_PROFILE_PATH


