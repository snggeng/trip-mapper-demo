# README

This Repository is part of a workshop given at HackDuke 2016 on how to make Web
Applications in Ruby on Rails by [Geng Sng](https://github.com/snggeng). The talk will be held on 19 Nov 2016,
6pm at Hudson Hall 208, and is meant for beginners. Bring yourself and a keen
sense of learning!

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

## Gems

```
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
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
* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

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
