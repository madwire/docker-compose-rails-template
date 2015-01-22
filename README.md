# Fig - Rails new template

Simple change my_app_name to well your app name!

```
mkdir my_app_name && cd my_app_name
git clone git@github.com:madwire/fig-rails-template.git . && rm -rf .git && rm README.md
fig run web rails new . --force --skip-bundle --skip-active-record
```

Change the app name in:

- config/application.rb
- config/initializers/session_store.rb (optional)