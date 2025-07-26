hugo --gc --minify
rm -rf /tmp/biblicaldhiman-public
cp -avR public /tmp/biblicaldhiman-public
git checkout gh-pages
git pull origin gh-pages
git reset --hard origin/gh-pages
rm -f 404.html
rm -rf about
rm -rf categories
rm -rf contact
rm -rf css
rm -rf episodes
rm -f hugo_stats.json
rm -f index.html
rm -f index.xml
rm -rf images
rm -rf js
rm -f manifest.webmanifest
rm -f manual-deploy.sh
rm -rf node_modules
rm -f package-lock.json
rm -rf pages
rm -rf public
rm -rf resources
rm -f searchindex.json
rm -f service-worker.js
rm -f sitemap.xml
rm -rf sections
rm -rf tags

cp -avR /tmp/biblicaldhiman-public/* .
git add .
git commit -sm "Manual Deployment"
git push origin gh-pages 
rm -rf /tmp/biblicaldhiman-public
