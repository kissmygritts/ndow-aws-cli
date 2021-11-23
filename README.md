# ndow-aws-cli
Helpful AWS CLI shell scripts

## Getting started

These tools require a *NIX scripting environment, either Linux or Unix. Windows userss, install WSL.

### Linux & WSL

Install dependencies

```sh
sudo apt install unzip jq
```

Install AWS CLI

```sh
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

Configure AWS CLI

```sh
aws configure

AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
Default region name [None]: us-west-2
Default output format [None]: json
```

Install scripts and make executable.

```sh
git clone https://github.com/kissmygritts/ndow-aws-cli
cd ndow-aws-cli

sudo chmod +x delete-multipart.sh
sudo chmod +x save-all-files.sh
sudo chmod +x save-multipart.sh

# run commands
./save-multipart.sh
./save-all-files.sh
./delete-multipart.sh
```
