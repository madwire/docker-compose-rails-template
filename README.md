# Docker Compose - Rails new template

Simple change my_app_name to well your app name!

```
mkdir my_app_name && cd my_app_name
git clone https://github.com/madwire/docker-compose-rails-template . && rm -rf .git && rm README.md
docker-compose run --no-deps --rm app script/new && rm script/new
```

### Change the app name in:

- config/application.rb
- config/initializers/session_store.rb (optional)

### Then

Uncomment the line in your new Gemfile which loads therubyracer, so we've got a Javascript runtime:

`gem 'therubyracer', platforms: :ruby`

Now add any other gem you think you need. then run `docker-compose up` (and new gems will automatically be installed)

### Also

#### Whitelist your IP for the web console

To avoid warnings about blocked ip's in your server log and get the Rails web console working again, In your config/environments/development.rb, add the following line:

```
config.web_console.whitelisted_ips = '192.168.99.100' # your docker machine IP
```
#### Keep your html emails working

If you are sending emails with embedded styles and images, you might find they're not working properly from inside docker. On your mailer configuration, you need to change the 'localhost' by your IP:

```
config.action_mailer.raise_delivery_errors = true # not needed but helpful
config.action_mailer.default_url_options = { host: '192.168.99.100', port: 3000 }
config.action_mailer.asset_host = "http://192.168.99.100:3000"
```
