#/bin/bash

echo "test=mundo" >> $GITHUB_OUTPUT
TEXT+="HELLO"'\n'
TEXT+="WORLD"'\n'
TEXT+="!"'\n'

# https://stackoverflow.com/a/74137121
message=$(echo $TEXT | tr '\n' ' ')
echo "tr-no-newlines=$message" >> $GITHUB_OUTPUT

# https://github.com/orgs/community/discussions/26288
content=TEXT
content="${content//'%'/'%25'}"
content="${content//$'\n'/'%0A'}"
content="${content//$'\r'/'%0D'}"

echo "replace=$content" >> $GITHUB_OUTPUT
