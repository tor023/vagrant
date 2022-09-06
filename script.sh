dd if=/dev/zero of=/swapfile bs=1M count=1024
mkswap /swapfile
swapon /swapfile
chown root:root /swapfile
chmod 0600 /swapfile
echo "/swapfile          swap            swap    defaults        0 0" >> /etc/fstab

apt-get update
apt-get install -y curl openssh-server ca-certificates tzdata htop
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
sudo EXTERNAL_URL="http://gitlab.int" apt-get install -y gitlab-ce
