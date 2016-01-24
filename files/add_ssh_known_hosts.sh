for i in github.com bitbucket.org; do
    if [ -e /etc/ssh/ssh_known_hosts ]; then
        if ! grep $i /etc/ssh/ssh_known_hosts > /dev/null; then
            ssh-keyscan $i >> /etc/ssh/ssh_known_hosts
        fi
    else
        ssh-keyscan $i >> /etc/ssh/ssh_known_hosts
    fi
done
