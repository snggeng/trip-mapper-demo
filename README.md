# README

This Repository is part of a workshop given at HackDuke 2016 on how to make Web
Applications in Ruby on Rails by [Geng Sng](https://github.com/snggeng). The
talk will be held at Duke University on 19 Nov 2016, 6pm at Hudson Hall 208, and
is meant for beginners.

Bring yourself and a keen sense of learning! (and your laptop!)

## Instructions Before We Begin
In order to make it easier for all attendees, please do the following before
attending the workshop:

* Register for a [Github Account](https://github.com)

* Attend Dev & Jiawei's workshop on ```Intro to Git (Hudson Hall 208, 3-4pm on 19
Nov)```

* Install [Ruby on Rails](http://installrails.com)

If you already have ruby / rails installed, please ensure that you have the
following versions:

## Versions
``` Ruby '~> 2.3.0'  ```

``` Rails '~> 5.0.0'  ```

# Trip Mapper
In this workshop, we will be creating a simple trip mapper using Ruby on Rails.
We will be using the Google Maps API and several gems to get our web app up and
running quickly.

## Initialization

We will be making our app from scratch, so once you've installed Rails and got a
github account, let's begin!

We begin by initializing our new rails app. So go ahead type ```rails new
app_name``` in your directory of choice, to create a new rails app. You will see
that many files are being generated for you, that's Rails doing the
heavy-lifting for you right there.

Once you've done that, we should move into our new rails app by running the
following command in terminal:
``` cd app_name```

Then we want to link our link our local repo to our github repo, by doing the
following:
* login to Github and create a new repo
* copy the repo URL
* ```git remote add origin GIT_URL```
* ``` git push -u origin master```

Some of you familiar with git may notice that we did not run ```git init``` to
initialize git in our app. That's because rails already initializes git in any
new Rails app by default.

List of Commands so far:
```
rails new app_name
cd app_name
git remote add origin git_url
git push -u origin master
```

## Gems

Next, open up your app in your text editor of choice by running this command:
``` [text_editor_name] .```

You should see a huge line of folders. Search for a file called ``` Gemfile```
and double-click on it.

Paste the following into your Gemfile:

```
# heroku deployment
gem 'rails_12factor', group: :production
# user auth
gem 'devise'
# relational mapping
gem "rails-erd"
# geocoding to get lat and long values
gem 'geocoder'
# bootstrap generator
gem 'bootstrap-generators'
# mapping
gem 'gmaps4rails', '~> 2.0.3'
# to add 'content_tag_for' method which was removed from Rails 5.0
gem 'record_tag_helper', '~> 1.0'
# google's MarkerClusterer.js
gem 'markerclustererplus-rails'
```
Ruby Gems are cool and small libraries that developers have made to make running
common features easier. By installing a ruby gem, we gain access to the library
that was made and the gem becomes a part of the dependencies of your
application. Gems are one of the biggest reasons why people use Rails, because
it makes everything so easy and fast!

Now let's run ``` bundle install ``` to install our dependencies

Run the following in your Terminal:
```
git add .
git commit -m '[any message here]'
bundle install
```

It's good practice to stage and commit every time you make a change to your
code. After we've installed our ruby gems, we should ``` git add .``` and ```
git commit -m '[commit message]'``` as above to ensure that we track all the
versions of our code.

# User Authentication with Devise
We've used a nifty gem called Devise to handle user authentication in our
application. You can find find the documentation for Devise
[here](https://github.com/plataformatec/devise).

According to this documentation, all we need to do is run these commands to get up
and running:

```
rails generate devise:install
```

Now open up your app in your text editor again and look for:
```
config/environments/development.rb
```

Add the following config inside:
```
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```

Then run this command:
``` rails generate devise User```

This will create a User model and the corresponding files using the Rails
framework that gives us options which include user authentication and view pages
for login and sign up.

Once we've generated a new User, we want to migrate our database to ensure that
our database is synced with our Rails app.

``` rails db:migrate ```


72f2d96 enabled routing in index.html.erb and changed waypts to exclude first and last
b3244ce fixed bugs for markers | markers now display | need to add waypoints mapping
5600a93 gem i markerclustererplus | edited html.erb
2be6a97 get googleAPI key and add into trips/index.html.erb | add js inline to index.html.erb to render map
ad259e8 rails g gmaps4rails:copy_js | pasted map js from gmaps4rails source into views/layouts/trips/index.html
59470bc added require gmaps/google and underscore in assets/javascripts/application.js | go to gmaps4rails github source
535322b underscore.js
59c5f0a added underscore.js in vendor/assets/javascripts get minified js from underscorejs.org
59dfa6f new migration FixColumnName changed :lattitude to :latitude | models/trip.rb added geocoded_by :address after_validation :geocode
e161c4e routes.rb | root trips#index
d1d076e rake db:migrate
0e351e6 rails g Trip lattitude:float longitude:float name:string address:string title:string
f0c499f rails g bootstrap:install | generate bootstrap template
205897a rails db:migrate
0e675f4 rails generate devise User
4237344 added config for devise in config/environments/development.rb
0301095 rails generate devise:install
e6a74bf initial commit | rails new | bundle install gems: devise, 12_factor,
geocoder, gmaps4rails, rails-erd, record-tag-helper, bootstrap-generator
