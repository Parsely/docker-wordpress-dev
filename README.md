docker-wordpress-dev
====================

Out-of-the-box Wordpress docker image for
[Parse.ly plugin](https://github.com/Parsely/wp-parsely) development.


Usage
-----

To create the image `parsely/wordpress-dev`, execute the following command in
the docker-wordpress-dev folder:

	docker build -t parsely/wordpress-dev .

You can now push your new image to the registry:

	docker push parsely/wordpress-dev


Running your Wordpress docker image
-----------------------------------

Start your image (you may need to replace `$HOME/repos/parsely/wp-parsely` with
the path to where you have cloned the
[Parse.ly WP plugin](https://github.com/Parsely/wp-parsely):

	docker run -d -v $HOME/repos/parsely/wp-parsely:/app/wp-content/plugins/wp-parsely -p 8080:80 parsely/wordpress-dev

Test your deployment:

	curl http://localhost:8080/

You can now start configuring your Wordpress container!


More information
----------------

For details on how to access the bundled MySQL Server, set specific passwords or disable .htaccess,
please visit the [tutum/lamp repository on github](https://github.com/tutumcloud/tutum-docker-lamp)
