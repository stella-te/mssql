git init

curl -u 'stella-te' https://api.github.com/user/repos -d '{"name":"mssql"}'

# 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
# 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

git remote add origin https://github.com/stella-te/mssql.git

echo "#Don't panic, it's not rocket science." -> README.md

git add .

git commit -m "first commit"

git push --set-upstream origin main

git rm -r --cached .
