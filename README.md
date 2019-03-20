# Docker Compose - Rails new template

Simple change my_app_name to well your app name!

```
mkdir my_app_name && cd my_app_name
git clone https://github.com/madwire/docker-compose-rails-template . && rm -rf .git && rm README.md
docker-compose run --no-deps --rm app script/new && rm script/new
```

### Change the app name in:

- config/application.rb

### Then

Add any other gem you think you need. then run `docker-compose up` (and new gems will automatically be installed)

### Also

#### Whitelist your IP for the web console

To avoid warnings about blocked ip's in your server log and get the Rails web console working again, In your config/environments/development.rb, add the following config option:

```
config.web_console.whitelisted_ips = begin
  addrinfo = Socket.ip_address_list.detect(&:ipv4_private?)
  addrinfo.try(:ip_address).sub(/\.(\d{1,3})$/, '.0/16')
end
```

## LICENSE

The MIT License (MIT)

Copyright (c) 2019 Richard Adams

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
