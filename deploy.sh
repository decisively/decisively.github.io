# Run build before even trying to deploy
bundle exec middleman build


# Begin deployment
echo -e "\nRunning Travis Deployment"
echo "Setting up Git Access"

chmod 600 deploy_key

# Add the SSH key so it's used on git commands
eval `ssh-agent -s`
ssh-add deploy_key

# Setup git
git remote set-url origin git@github.com:decisively/decisively.github.io.git
git config --global user.name Travis
git config --global user.email travis+ci@graype.in

# Deploy
bundle exec middleman deploy
