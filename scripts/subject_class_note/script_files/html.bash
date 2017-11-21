set -e

mkdir -p htmls
echo -e "<!doctype
html>\n<head>\n\t<title>Notes</title>\n</head>\n\n<body>\n" > ./htmls/index.html
for f in *.md;
do
    echo "Working on $f";
    echo -e "\t<a href='./$f.html'>$f</a><br>\n" >> ./htmls/index.html
    pandoc --standalone "$f" -o ./htmls/"$f".html --template=$1
done

echo -e "\n</body>" >> ./htmls/index.html
