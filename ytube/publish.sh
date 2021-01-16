#

find . -name "*~1" -delete
bundle update
jekyll build
eval $(cat _data/ipfs.yml | eyml)
pv=$qm
cd _playlists
sh doit
cd ..
git add _data/lists/all-videos-keys.yml
git add _playlists/
qm=$(ipfs add -Q -r _site)
yt=$(ipfs add -Q -w _site/ytnoad.htm _site/style.css)
bafy=$(ipfs cid base32 $yt)
cat > _data/ipfs.yml <<EOF
--- # ytube blockRing™
bafy: $bafy
qm: $qm
pv: $pv
yt: $yt
...
EOF
git add _data/ipfs.yml
gituser
msg="$(git diff --minimal -U0)"
git commit -a -m "playlist update on $(date +%D):\n$msg"
git push origin
