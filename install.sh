#cd to the parent directory of this script
#cd "$(dirname "$0")"/..
pwd
if [[ "$OSTYPE" == "darwin"* ]]; then
	echo "Running on macOS, using homebrew..."
	sleep 2
	ret=$( brew install python@3.10 )
	if [[ $? -ne 0 ]]; then
		echo "Error installing Python 3.10 with Homebrew. Please check you have Homebrew installed (https://brew.sh/) and try again."
		exit 1
	fi
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
	echo "Running on Linux, using apt-get..."
	sleep 2
	sudo apt-get install python3.10
fi

python3.10 -m venv venv
source venv/bin/activate
pip install -r requirements.txt