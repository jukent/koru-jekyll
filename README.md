# jekyll-koru

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-koru"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-koru
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-koru

## Local Development

Run `docker-compose up --build` to (re)build the node.js and jekyll images and run the container.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-koru.gemspec` accordingly.


