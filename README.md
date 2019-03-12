# jekyll-koru

## Local Development

To download koru-base from Artifactory, you will need to add your Artifactory credentials to a .env file. First, you will need to retrieve your credentials with the following command:

```sh
curl -u [username]:[password] http://<ARTIFACTORY_SERVER_DOMAIN>:8081/artifactory/api/npm/auth
```

Then copy the `_auth` and `email` strings into a .env file. The structure should be:

```
AUTH=[token]
EMAIL=[email address]
```

Run `docker-compose up --build` to (re)build the node.js and jekyll images and run the container.

The latest version of koru-base will be downloaded and be located in the node_modules directory. To update koru-base, remove the koru-base directory in /assets and replace it with the version in /node_modules.

## Jekyll Development

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-koru.gemspec` accordingly.


