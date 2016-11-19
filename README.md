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

Now let's run ``` rails s ``` to check if we got everything right so far.

Go to ```http://localhost:3000``` to see your app running on localhost. The
default localhost for Rails is 3000 but you can set it to whatever you want. For
this workshop we'll be using ```localhost:3000``` .

Congrats! You've made your first Rails application!

List of Commands so far:
```
rails new app_name
cd app_name
git remote add origin git_url
git push -u origin master
rails s
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

## User Authentication with Devise
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

```
rails db:migrate
```

## BootStrap Generator
Now that we have the basics of our web app up, let's generate some bootstrap
templates to make our app look better. [BootStrap](http://getbootstrap.com/) is a common framework used by
web developers to make styling websites easier.

We will be using the gem ```bootstrap-generators``` to generate a template for
each model that we subsequently create.

Run the following command in terminal:
```
rails g bootstrap:install
```

Now when we generate new models, a corresponding template will be generated for
that model.

## Creating Trips

For this app, we will only be creating one model: trips. If you wanted to expand
this app, you could easily create other models and assign relationships to them
so that they are mapped in your database. We will not be going into how to do
this in this demo, but if you have questions please feel free to get in touch
with me.

To create a trip, run this command:
```
rails g Trip latitude:float longitude:float name:string address:string
title:string
```

You should see Rails generating some files for you. ```g``` is short for
```generate```. You can use these 2 terms interchangeably in Rails.

Imagine you are creating an excel sheet and you want to specify properties that
belong to a trip. We are making a column for each of the properties
```latitude``` ```longitude``` and so on, and specifying the type of data that
goes into that column via ```:float``` or ```:string```. That's how the Trip
that we just created is going to look like in our database.

Next, to migrate our database based on our newly generated Trip, run:
```
rails db:migrate
```

Now run ```rails s``` and take a look at your localhost. You should see that
there's some default styling going on here, even though we did not do any
styling on our own. That's the gem ```bootstrap-generators``` in action right
there!

## Adding Sign In / Sign Out Buttons
Before we move on, let's add some sign in and out buttons to our app:

In ```app/views/layouts/application.html.erb``` add this chunk of code:

```
<div id="navbar" class="collapse navbar-collapse">
  <ul class="nav navbar-nav">
    <li class="active"><a href="#">Home</a></li>
    <li><a href="#about">About</a></li>
    <li><a href="#contact">Contact</a></li>
  </ul>
   <!-- Add this part -->
  <ul class='nav navbar-nav navbar-right'>
    <% if user_signed_in? %>

    <li><%= link_to 'Sign Out', destroy_user_session_path, method: :delete%></li>
    <% else %>
    <li><%= link_to 'Sign In', new_user_session_path %></li>
    <% end %>
  </ul>
  <!-- end -->
</div>
```

You should see a ```div``` tag with the id ```id="navbar"```. Add in the part
that is encapsulated by the comments above. We are toggling between Sign In and
Sign Out buttons when the user is signed in. If you notice the ```<% %>``` those
are scriptlets in the Embedded Ruby templating language. You should notice that
our html file has a html.erb extension. Erb basically allows us to enter ruby
scripts into html, which is more convenient since you can access the functions
and instance variables created in your controller here. the
```user_signed_in?``` function is an example of a function that's created by the
```Devise``` gem that we are accessing. You can't find it in your code because
Devise generates a hidden file that stores all these methods. If you want to
find out all the methods Devise creates, refer to its
[documentation](https://github.com/plataformatec/devise).

Now refresh your rails app and see the changes!

You can now sign in, sign out, and sign up. The pages are all created for you
using ```Devise```. Isn't that handy?

## Updating Routes
After creating a new model in Rails, you should always updated your routes based
on how you want your app to work. Routes handle the HTTP requests and responses
between your frontend and the backend. By default, Rails will generate routes
for you when you create a new model.

What we want to do now is to set a root page for our app, so localhost will
always point to it. In ```app/config/routes.rb``` add the following:

```
root 'trips#index'
```

This assigns a root page for your app. In this case, we assign the
index.html.erb of our Trips to the root, so localhost:3000 and eventually your
website, will show the index.html.erb page for Trips by default.

## Getting ready to create Maps
Now that we have the skeleton of the app up, we want to enable it to geocode any
address that you enter into the app, and mark it on a map, so that you can plan
trips with your friends.

In order to create a map and create markers on it, we'll be using the following:

* minified underscore.js
* gem 'gmaps4rails'
* google maps API + key
* gem 'markerclustererplus'

Let's grab the [underscore.js](http://underscorejs.org/underscore-min.js) source
code and paste it into ```vendor/assets/javascripts``` as ```underscore.js```

Then we need to add the following in ```assets/javascripts/application.js```:

```
//= require underscore
//= require gmaps/google
//= require markerclusterer
```

We do this so that Rails knows that we are using these 2 libraries in our
application when it's loading javascript. To see more about gmaps4rails, see
[here](https://github.com/apneadiving/Google-Maps-for-Rails).

Now we want to generate a copy of the js file that gmpas4rails requires. This
step is provided in the documentation for gmaps4rails.

```
rails g gmaps4rails:copy_js
```

Now let's set a div tag in ```index.html.erb``` for our map:

```
<div style='height:400px; position: relative; padding-bottom: 75%; height: 0; overflow:hidden'>
  <div id="map" style='width: 100%; height: 100%; position: absolute; top: 0; left: 0;'></div>
</div>
```

Now we want to paste some in-line javascript into our index page to render the
map.

In ```views/layouts/trips/index.html.erb``` paste:

```
<script type="text/javascript">
function initMap() {
  handler = Gmaps.build('Google');
  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
    markers = handler.addMarkers(<%=raw @hash.to_json %>);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  });

  var directionsDisplay = new google.maps.DirectionsRenderer({ polylineOptions:{strokeColor:"#4a4aff",strokeWeight:5}, suppressMarkers:false });
  var directionsService = new google.maps.DirectionsService();
  var map = new google.maps.Map(document.getElementById('map'));
  directionsDisplay.setMap(map);

function calcRoute(){
  <% @waypts = []; %>
  <% @trips.each_with_index do |t, index| %>
      <% if index == 0
         next
       elsif index == (@trips.size - 1)
         next
       else
         @waypts.push({:location => t.address, :stopover => true})
       end %>
  <% end %>


  var directionsRequest = {
    origin: <%=raw @hash.first.to_json %>,
    destination: <%=raw @hash.last.to_json %>,
    waypoints: <%= raw @waypts.to_json %>,
    optimizeWaypoints: true,
    travelMode: google.maps.DirectionsTravelMode.DRIVING,
    unitSystem: google.maps.UnitSystem.METRIC
  };
  directionsService.route(directionsRequest, function(response, status) {
    if (status == 'OK') {
      var warnings = document.getElementById("warnings_panel")
      warnings.innerHTML = "" + response.routes[0].warnings + ""
      console.log(response.routes[0])
      directionsDisplay.setDirections(response);
      console.log(response)
    } else {
      window.alert('Directions request failed due to ' + status);
    }
  });
}

calcRoute();

}
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?v=3.25&key=AIzaSyC8Hr3MPNrJIGgDvsmkFH1GqboB6DYgUwg&callback=initMap"></script>
```

You should get your own API key.

## Completed!

Congratulations! You've got a working rails trip mapper application!

Remember how the Rails framework works:
* MVC
* generating models, views, controllers, etc
* See it's wonderful
[documentation](http://edgeguides.rubyonrails.org/getting_started.html)
* Hit me up if you need help on any web application you're building

Now go off and hack!
