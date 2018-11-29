
class apache {

	file {"/var/www/html/index.html":

		source => "puppet:///modules/apache/index.html",
		ensure => present

	}

        case $::osfamily {

                "RedHat": {

			$apache = "httpd"

                }

                "Debian": {

			$apache = "apache2"

                }

        }

	package {$apache:

		ensure => present

	}

}
