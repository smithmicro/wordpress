# wordpress
WordPress Docker Image

## Features
* Derived from official Docker Image
* Builds for 4.9 and up
* Supports large uploads
* Uses WORDPRESS_CONFIG_EXTRA to create new variables for WP_HOME and WP_SITEURL

### WORDPRESS_CONFIG_EXTRA
The following section in the `docker-compose.yml` makes it simple to change your site URL:
```
    environment:
      ...
      WORDPRESS_CONFIG_EXTRA: |
        /* Get WP_HOME and WP_SITEURL from environment variables that we set below */
        define( 'WP_HOME', getenv('WP_HOME') );
        define( 'WP_SITEURL', getenv('WP_SITEURL') );
      WP_HOME: http://localhost:8080
      WP_SITEURL: http://localhost:8080
```
For example, if you change your site URL from development to production, you don't need to change your Docker image or poke values into configuration files.
