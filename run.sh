# php -f create.php $1 | base64 | (read data && sed -e "s/var data_string = .*/var data_string = \"$data\"/" ./template.html > ./temp.html) && open -a "Google Chrome.app" temp.html && sleep 2 && rm temp.html

php -f create.php $1 | base64 | (read data && sed -e "s/var data_string = .*/var data_string = \"$data\"/" ./template.html) | base64 | (read data && open -a "Google Chrome.app" "data:text/html;base64,$data" --args --incognito)