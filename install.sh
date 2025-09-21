#cd to the parent directory of this script
cd "$(dirname "$0")"/..
pwd
sudo apt-get install python3.10
python3.10 -m venv venv
source venv/bin/activate
pip install -r requirements.txt