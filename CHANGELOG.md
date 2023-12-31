0.24.0
------
* Update django role to handle github release files

0.23.0
------
* Update relevant commands to run as root
* Update django repo/release url to work with github

0.22.0
------
* Add logrotate to traefik log
* Add logrotate functionality to goaccess access logs

0.21.0
------
* Correct if statements in traefik dynamic config

0.20.0
------
* Fix traefik statement for router_analytic_rule
* Correct static config block when statement

0.19.0
------
* Handle /analytics with auth middleware in traefik config
* No longer add /analytics to path prefixes in static
* Remove auth middleware from traefik analytics websocket endpoint

0.18.0
------
* Update traefik analytics with auth middleware
* Update traefik to ignore path prefixes for analytics websocket endpoint

0.17.0
------
* Fix static_add_path_prefixes var in static

0.16.0
------
* Update static to handle add path prefix cleanly

0.15.0
------
* Correct url for analytics service in traefik

0.14.0
------
* Add ws-url to goaccess service
* Update traefik analytics with tls and middleware
* Update make container to remove container first

0.13.0
------
* Move traefik analytics to tcp routers/services
* Set default analytics ws port to 7891 in static
* Update goaccess filter service command, escape string properly

0.12.0
------
* Add make command to create container
* Break oaccess services into separate access filter, and goaccess services

0.11.0
------
* Update server in traefik analytics loadBalancer
* Separate project data files in goaccess
* Correct labelling of traefik redirectRegex middleware

0.10.0
------
* Update static role to pass analytics option to goapp role
* Update goapp to pass analytics option to traefik
* Update traefik with analytics endpoint, router, and service option
* Refactor traefik tasks
* Add RegexRedirect middleware option to traefik
* Set goaccess HTML report title
* Fine tune the filtering of access logs in goaccess
* Update service stop handling in goaccess

0.9.0
-----
* Correct goapp source s3 install tasks

0.8.0
-----
* Update static role to 0.5.0
* Update static handle analytic option
* Update goaccess to use new geoip database
* Goaccess no longer calls traefik
* Goaccess expects to static service to serve files
* Goaccess sets up websocket properly

0.7.26
------
* Strip prefixes from goaccess traefik config
* User geoip-database package for goaccess
* Correct traefik config file name for goaccess

0.7.25
------
* Update way goaccess configured

0.7.24
------
* Correct path prefix in goaccess role
* Differentiate config name for goaccess traefik config

0.7.23
------
* Add goaccess role for web log analysis
* Update traefik with access logs
* Update sentry config options

0.7.22
------
* Update celery service commands and update template file permissions

0.7.21
------
* Update sentry 20.12.1b

0.7.20
------
* Add default drone_bitbucket_enabled param

0.7.19
------
* Update goapp to allow add pip packages to install
* Lint cleanup of goapp role
* Add ansible as requirement

0.7.18
------
* Set prometheus domain correctly in grafana data source
* Remove duplicate tasks in grafana
* Add proxy scape configs to prometheus
* Update prometheus external url config
* Update port in node_exporter
* Add stripPrefix middleware option to traefik
* Ensure most services are behind traefik

0.7.17
------
* Add realm to traefik middleware auth
* Update ldap role to python3
* Upgrade ldap to ldap_attrs
* Set unique platform name for grafana
* Add /api/datasources to grafana traefik router rules
* Add option to whitelist ips in traefik

0.7.16
------
* Ensure we pass correct IP address to traefik from djangoapp

0.7.15
------
* Update djangoapps to run on localhost, force requests through traefik

0.7.14
------
* Update setting/handling of allowed hosts in django app/traefik

0.7.13
------
* Traefik role handles no cors_domain var

0.7.12
------
* Fix handling of cors_domains

0.7.11
------
* Allow cors_domains to be set to domains

0.7.10
------
* Add complete list of domains for TLS

0.7.9
-----
* Allow multiple domains in traefik role
* Add cors domains to static role
* Update static role to add www by default
* Set STATIC_PORT env var in static role

0.7.8
-----
* Add static role

0.7.7
-----
* Allow goapp to have separate name to application

0.7.6
-----
* Add bitbucket option to drone env vars

0.7.5
-----
* Fix handling of empty path_prefix_rules in traefik

0.7.4
-----
* Update traefik to allow multiple path prefixes
* Update traefik to allow overwritting of default config file name

0.7.3
-----
* Add prefix_required for traefik dynamic config routing

0.7.2
-----
* Use become_user for commands involved venv

0.7.1
-----
* Update djangoapp service template

0.7.0
-----
* Migration django/app roles to better molecule setup
* Create MEDIA directory in django role
* Update podman requirements
* Install djangoapp in venv

0.6.8
-----
* Add allowsHosts option to traefik
* Remove debug statements

0.6.7
-----
* Update celery service template

0.6.6
-----
* Update celery options and service

0.6.5
-----
* Update celery options

0.6.4
-----
* Fix celery directories

0.6.3
-----
* Update celery role to create necessary dirs

0.6.2
-----
* Add setup of systemd-tempfiles for celery service
* Remove duplicate tags in common roles

0.6.1
-----
* Correct client_class used in redis cache url

0.6.0
-----
* Add celery role
* Add djangoapp role
* Update django role to just install django
* Fathom passes add_prefix to traefik
* Allow add_prefix param to traefik

0.5.2
-----
* Manage users in drone properly
* Set executable attribute for pip command in ldap

0.5.1
-----
* Remove set admin user functionality in Drone role
* Use service to ensure drone running

0.5.0
-----
* Add fathom role
* Update drone service to not remove volumes on shutdown
* Update goapp role, better able to handle being re-used by another role

0.4.9
-----
* Update relevant tasks with users tag

0.4.8
-----
* Update sentry configs

0.4.7
-----
* Set admin users in Drone

0.4.6
-----
* Update pypiserver to use systemctl service file
* Set DISABLE_HTTP_GIT to false in gitea settings

0.4.5
-----
* Correct gitea ROOT_URL setting

0.4.4
-----
* Remove broken debug statement in sentry install
* Update sentry service to not remove volumes

0.4.3
-----
* Update sentry configs

0.4.2
-----
* Add system,url-prefix setting to sentry config.yml

0.4.1
-----
* Add sentry config files prior to running install

0.4.0
-----
* Refactor sentry role
* Sentry uses systemctl to run
* Drone uses systemctl to run
* Gitea oauth application check is now against client_id field
* Ensure gitea systemctl is enabled
* Fix deprecation warning on append attribute for user task

0.3.16
------
* Install python-dalp correct in ldap role
* Update all Ubuntu instances to 20.04 in molecule configs

0.3.15
------
* Update COOKIE_SECURE to true for gitea
* Add python-setuptools to ansible support packages on ldap role

0.3.14
------
* Fix setting of user ssh keys on servers

0.3.13
------
* Update psql backup script with decent flags, makes for easier restore
* Update packages and libraries required for ldap with move to Ubuntu 20.04
* Correct check when removing user ssh key from server

0.3.12
------
* Add logrotate role

0.3.11
------
* Update rclone config file permissions
* Allow labelling of rclone config section
* Update S3 rclone settings

0.3.10
------
* Create correct link with rclone binary

0.3.9
-----
* Update rclone directory permissions

0.3.8
-----
* Restart goapp service when link changed for goapp release

0.3.7
-----
* Add localhost to ALLOWED_HOSTS in django role

0.3.6
-----
* Add local IP to ALLOWED_HOSTS env var in django role

0.3.5
-----
* CORS header now isolated to each app

0.3.4
-----
* Add CORS header option to traefik

0.3.3
-----
* Set Postgresql Database Collect and CType to C.UTF-8

0.3.2
-----
* Set TLS version >= 1.2 in traefik
* Set CipherSuites used in traefik

0.3.1
-----
* Correct gitea traefik port var name

0.3.0
-----
* Rename traefik port variable to http_port
* Add add_www var to traefik
* Cleanup traefik converge variables

0.2.0
-----
* Add default http port to goapp role
* Clean up django role package requirements
* Common role runs termite tasks once
* Clean up common role molecule setup

0.1.0
-----
* Initial release
