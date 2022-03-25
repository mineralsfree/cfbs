set -e
set -x
cd test
mkdir -p ./tmp/
cd ./tmp/
touch cfbs.json && rm cfbs.json
rm -rf .git

cfbs --non-interactive init
cfbs --non-interactive add masterfiles
grep '"name": "masterfiles"' cfbs.json
cfbs --non-interactive remove masterfiles --non-interactive
! grep '"name": "masterfiles"' cfbs.json
