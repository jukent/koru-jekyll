> Please follow this repository if you plan to create a Github Pages website using [koru-jeykll-template](https://github.com/NCAR/koru-jekyll-template) and want to be notified of version updates to the Jekyll theme.

# Using the koru-jekyll theme

This is a theme based on UCAR/NCAR's custom 'koru' design. It is built on top the Foundation framework. This provides users and developers with responsiveness and accessibility.

* [Layouts](#layouts)
* [Main Menu](#main-menu)
* [Local Development](#local-development)
* [Jekyll Development](#jekyll-development)

## Layouts
### Default

The only front matter information required for default pages is:

```yml
---
layout:
title:
---
```

### Front page

Front matter options for the front page are:

```yml
---
layout:
title:
banner-title:
banner-description:
banner-button-text:
banner-button-url:
---
```

## Main menu

The main menu is set in the mainmenu.yml file in the _data directory. Paths can be both absolute and relative in the menu. The structure for creating a menu is:

```yml
menu:
  - title: Software
    url: /pages/documentation.html
```

Use the following structure to create submenus:

```yml
menu:
  - title: Software
    url: /pages/documentation.html
    submenu:
        - title: VAPOR
        url: /pages/vapor.html
```

## Update Koru base to Latest Version

* Run `npm update koru-base` (pulls in latest version from Github Registry)
* Commit changes
    > Note: when in doubt, delete node_modules and re-run the previous steps

## Jekyll Development

1. If you haven't already, [set up a GitHub Access Token](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages#authenticating-to-github-packages) to publish, install, and delete packages.
2. Set a `NPM_TOKEN` variable locally that will use the GitHub access token you just created.
   * To add the variable in your current session, run `export NPM_TOKEN=your-token-here`
   * Or add the variable to the configuration file of your shell environment (.bashrc, .zshrc, etc.)
3. Run ` docker-compose build --build-arg NPM_TOKEN=${NPM_TOKEN} && docker-compose up` to run jekyll in a container.

## New Release for downstream sites

* Commit and push your changes to Github
* Create a new version on Github
* Pull in the new release at https://github.com/NCAR/jekyll-koru-test in the _config.yml file.

## Google Analytics

To add Google Analytics code to your site:
1. Log into Google Analytics
2. If you have an existing site, go to your site's Admin dashboard
3. Under the "Property" column, click on "Tracking Info"
4. Click on "Tracking Code"
5. Copy your "Tracking ID"
6. In your Jekyll _config.yml file, add "analytics: *tracking-id*"

