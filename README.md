# Docker Compose - Rails new template

##### Requires Docker Compose v1.6+ for [older supported versions look at this branch](https://github.com/madwire/docker-compose-rails-template/tree/docker-compose-yml-version-1)

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

## LICENSE

The MIT License (MIT)

Copyright (c) 2016 Richard Adams

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
