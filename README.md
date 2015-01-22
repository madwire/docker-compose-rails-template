# Fig - Rails new template

Simple change my_app_name to well your app name!

```
mkdir my_app_name && cd my_app_name
git clone https://github.com/madwire/fig-rails-template . && rm -rf .git && rm README.md
fig run web rails new . --force --skip-bundle --skip-active-record
```

### Change the app name in:

- config/application.rb
- config/initializers/session_store.rb (optional)

### then:

Uncomment the line in your new Gemfile which loads therubyracer, so we've got a Javascript runtime:

`gem 'therubyracer', platforms: :ruby`

Now add any other gem you think you need. then run `fig build` (anytime you change the gemfile)