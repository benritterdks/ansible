command -v brew
if [[ $? != 0 ]] ; then
	echo "Install homebrew through self service before continuing"
	exit 1
else
	echo "Homebrew installed"
fi

SSH=~/.ssh/id_ed25519
if [[ ! -f "$SSH" ]] ; then
	echo "Setup github SSH key to continue script"
	exit 1
else
	echo "SSH key found"
fi

# Install ansible
echo "Installing ansible..."
brew install ansible

# Install community.general collection
echo "Installing community.general..."
ansible-galaxy collection install community.general

echo "\nPlaybook can be run with setup tag now\n\n"

# Selfservice install
echo "The following need to be installed with Self Service:"
echo "\tMicrosoft Word"
echo "\tMicrosoft Excel"
echo "\tMicrosoft OneNote"
echo "\tMicrosoft Teams"
echo "\tMicrosoft Outlook"
echo "\tMicrosoft Remote Desktop"
echo "\tOneDrive"
