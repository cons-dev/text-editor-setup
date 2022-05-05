git config --global user.email "spam@cons.dev"
git config --global user.name "Alexandra Miller"

mkdir -p ~/Memex/emacs-configuration
cp -r ./* ~/Memex/emacs-configuration

mkdir ~/.fonts
cp -r ./fonts/* ~/.fonts/

sudo snap install emacs --edge --classic
cp ./fonts/* ~/.local/share/fonts

cp emacs.el ~/.emacs.el

if ! command -v pip &> /dev/null
then
    sudo apt-get install swi-prolog
    swipl -g 'pack_install(lsp_server).'
fi

if ! command -v ros &> /dev/null
then
sudo apt-get -y install git build-essential automake libcurl4-openssl-dev
git clone -b release https://github.com/roswell/roswell.git
cd roswell
sh bootstrap
./configure
make
sudo make install
ros setup
fi

if ! command -v pip &> /dev/null
then
    curl  -sSf https://sh.rustup.rs | sh
    rustup component add rls rust-analysis rust-src clippy
fi

if ! command -v pip &> /dev/null
then
    sudo apt-get install python pip
    pip install python-lsp-server
fi

if ! command -v lein &> /dev/null
then
    wget "https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein" -O ~/bin/lein
    chmod a+x ~/bin/lein
    lein
    sudo bash < <(curl -s https://raw.githubusercontent.com/clojure-lsp/clojure-lsp/master/install)
fi

if ! command -v dot &> /dev/null
then
    sudo apt-get install graphviz
    sudo apt-get install plantuml
fi

ros install stumpwm

emacs --batch --eval="(progn (load-file ".emacs.el") (all-the-icons-install-fonts))"
