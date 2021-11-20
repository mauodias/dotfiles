REPO_USER="$(whoami)"
REPO_NAME="dotfiles"
REPO_URL="git@github.com:${REPO_USER}/${REPO_NAME}.git"
PROJECTS_FOLDER="$HOME/Projects"

function ensure_homebrew() {
  HOMEBREW_PATH=$(which brew)
  RC=$?
  if [ "${RC}" -ne 0 ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi
  echo Homebrew installed
}

function ensure_ansible(){
  ANSIBLE_PATH=$(which ansible)
  RC=$?
  if [ "${RC}" -ne 0 ]; then
    brew install python ansible
  fi
  echo Ansible installed
}

echo Starting environment setup
echo Have a seat, grab a coffee and enjoy the ride.
echo
echo NEXT: Download and install homebrew
ensure_homebrew
echo

echo NEXT: Download and install ansible
ensure_ansible
echo

echo NEXT: Prepare Projects folder and download ansible dotfiles
mkdir -p ${PROJECTS_FOLDER}
cd ${PROJECTS_FOLDER}
git clone ${REPO_URL}
cd ${REPO_NAME}
echo

echo Basic prerequisites installed. Run 'ansible-playbook install.yml' to start the main installation.
echo To update the dotfiles, run 'ansible-playbook dotfiles.yml'
