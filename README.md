# Fig - Rails new guide

Simple change my_app_name to well your app name!

```
mkdir my_app_name
cd my_app_name
git clone git@github.com:madwire/fig_rails_template.git .
rm -rf .git
fig run web rails new my_app_name . --force --skip-bundle --skip-active-record
```

