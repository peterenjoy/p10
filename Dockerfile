# Installs WordPress with wp-cli (wp.cli.org) installed
# Docker Hub: https://registry.hub.docker.com/u/conetix/wordpress-with-wp-cli/
# Github Repo: https://github.com/conetix/docker-wordpress-wp-cli

FROM wordpress:latest
FROM wordpress:cli


### TEST SSH####
#
#RUN apt-get update && apt-get install -y 
#RUN curl -o /usr/local/bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#RUN chmod +x /usr/local/bin/wp-cli.phar
#RUN mv /usr/local/bin/wp-cli.phar /usr/local/bin/wp
#
#



# Add sudo in order to run wp-cli as the www-data user 
#sudo less mysql-client

# Add WP-CLI 
#RUN while [ ! -f /var/www/html/wp-config.php ]; do date; sleep 2; ls /var/www/html; done
#RUN php wp-cli.phar --info
#RUN chmod +x wp-cli.phar
###
# Cleanup
#RUN apt-get clean
#RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

