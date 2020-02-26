source /Users/deakins/.bash_profile
source /Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenvwrapper.sh
workon sphinx3
make html
rsync -arvhP -e ssh _build/html/* engs1751@linux.ox.ac.uk:public_html/wiki/
