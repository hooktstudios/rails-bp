# Rails Boilerplate

Collections of gems / code we tend to use on about every project.
Feel free to take whatever you need.

**Work in progress. Not much to see for now.**

## I'm in a hurry, get me started

**INCOMPLETE** (Yup, Backstreet Boys song)

## What's in this
## Intended usage
This is intended to be used as a collection of tools to start projects quickly.
This is by no mean a perfect solution and it definitey has to be customized.

**Do not use this if you don't understand what's going on under the hood.**

## What's in included
* Tests
    * [rpsec](https://github.com/rspec/rspec)
    * [guard-rspec](https://github.com/guard/guard-rspec)
    * [capybara](https://github.com/jnicklas/capybara)
    * [factory\_girl](https://github.com/thoughtbot/factory_girl)
    * [spork](https://github.com/sporkrb/spork)
    * [guard](https://github.com/guard/guard)
* Assets
    * [SASS](http://sass-lang.com/)
    * [Bourbon](https://github.com/thoughtbot/bourbon)
    * [CoffeeScript](http://coffeescript.org/)
* Forms
    * [SimpleForm](https://github.com/plataformatec/simple_form)
    * SimpleForm wrapper for Twitter Bootstrap (`config/initializers/simple_form`)
* Production & deployment
    * Capistrano
    * Unicorn
* Dev tools
    * [Debugger](https://github.com/cldwalker/debugger)
    * [AwesomePrint](https://github.com/michaeldv/awesome_print)
    * Template vimrc
    * .gitignore
* Admin goodies
    * Admin base controller (`app/controllers/admin/base_controller.rb`).
    * Admin layout (`app/layouts/admin.html.erb`).
    * Admin base helper (`app/helpers/admin/base_helper.rb`). Includes
    `admin_form_for` which is a SimpleForm wrapper that defaults to Twitter's bootstrap.
    * Admin stylesheet that requires Twitter's bootstrap.
* Misc
    * [Kaminari](https://github.com/amatsuda/kaminari) for paging – _disabled by default_
    * [Devise](https://github.com/plataformatec/devise) for authentification – _disabled by default_
    * [Sorted](https://github.com/mynameisrufus/sorted) for sorting (duh) – _disabled by default_


### Admin
Let's stop re-inventing the wheel for admin backends. The boilerplate includes
an helper to create admin forms which defaults to the Twitter Bootstrap SimpleForm
wraper, and an admin base controller.

Don't want no admin?

    rm -rf app/helpers/admin app/controllers/admin app/views/layouts/admin.html.erb 

## Credits

Credits goes to all the gems contributors. Bootstrap integration is stolen from [SimpleFormBootstrap](https://github.com/rafaelfranca/simple_form-bootstrap)

