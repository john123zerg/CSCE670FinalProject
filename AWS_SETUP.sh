# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
command -v nvm
nvm install 20.12.1

npm install -g pnpm

# get pip
wget https://bootstrap.pypa.io/get-pip.py
python3 ./get-pip.py
source ~/.profile

# add github
ssh-keygen -t ed25519 -C "lagunazachary@gmail.com"
cat .ssh/id_ed25519.pub 
read -p "Enter this info into GitHub. Press enter to continue..."
git clone git@github.com:zacharylaguna/virtualdoc.git
cd virtualdoc/

# make nextjs-flask project from template
npx create-next-app nextjs-flask --example "https://github.com/vercel/examples/tree/main/python/nextjs-flask"
cd nextjs-flask
npm install

# add Werkzeug==2.2.2
read -p "Enter Werkzeug==2.2.2 into the following file. Press enter to continue..."
vi ~/virtualdoc/nextjs-flask/requirements.txt