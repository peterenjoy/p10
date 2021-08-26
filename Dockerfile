# Installs WordPress with wp-cli (wp.cli.org) installed
# Docker Hub: https://registry.hub.docker.com/u/conetix/wordpress-with-wp-cli/
# Github Repo: https://github.com/conetix/docker-wordpress-wp-cli

FROM wordpress:latest

RUN apt-get update && apt-get install less sudo -y 
RUN curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
COPY wp-su.sh /bin/wp
RUN chmod +x /bin/wp-cli.phar
RUN mv /bin/wp-cli.phar /bin/wp

# Cleanup
#RUN apt-get clean
#RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

