source /Users/deakins/.bash_profile
source /Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenvwrapper.sh
workon xrenv
make html
scp -r _build/html/* engs1751@linux.ox.ac.uk:public_html/wiki/
