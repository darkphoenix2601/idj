if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  https://github.com/darkphoenix2601/idj
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /idj
fi
cd /idj
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
