
# If this has permission denied to run the .sh file, in the termial run 'chmod +x install.sh'
npm install -g firebase-tools

####################
# Setup gcloud - https://cloud.google.com/sdk/docs/downloads-apt-get
sudo apt-get install apt-transport-https ca-certificates gnupg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install google-cloud-sdk
sudo apt-get install google-cloud-sdk-app-engine-python
sudo apt-get install google-cloud-sdk-app-engine-go
sudo apt-get install google-cloud-sdk-datastore-emulator
sudo apt-get install google-cloud-sdk-firestore-emulator
sudo apt-get install google-cloud-sdk-pubsub-emulator google-cloud-sdk-cbt google-cloud-sdk-cloud-build-local

## Init - log in and select microsite host
gcloud init

## install GO https://www.tecmint.com/install-go-in-linux/ https://golang.org/dl/
wget -c https://dl.google.com/go/go1.11.13.linux-amd64.tar.gz
shasum -a 256 go1.11.13.linux-amd64.tar.gz
sudo tar -C ~/workspace -xvzf go1.11.13.linux-amd64.tar.gz

## set the path for go - maybe change the go location to /usr/local, add these to 
## ~/workspace/.profile
export PATH=$PATH:~/workspace/go/bin
export GOPATH="$HOME/workspace/gopath"
export GOBIN="$GOPATH/bin"

# mkdir ~/workspace/gopath/src/
# cd ~/workspace/gopath/src/
# gcloud source repos clone micro_site_host --project=micro-site-host