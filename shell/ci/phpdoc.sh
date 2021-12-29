cd ../../workflow/phpdocumentor/phpdocumentor
composer install phpdocumentor/phpdocumentor
cd ../../bin
./phpdoc -d "..\..\class" -t "..\..\docs"
sleep 4151
