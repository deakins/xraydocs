source /Users/deakins/.bash_profile
source /Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenvwrapper.sh
workon sphinx3
make html
rsync -arvhP -e "ssh -p 22" _build/html/* DanE@163.1.15.221:/share/Web/Wiki
