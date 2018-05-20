# MarkerClustererPlus for Rails

MarkerClustererPlus is an enhanced Google Maps V3 implementation of the V2 MarkerClusterer.

This gem vendors the MarkerClustererPlus assets for Rails.
The files will be added to the asset pipeline and available for you to use.

The original source can be found here:

[MarkerClustererPlus for Google Maps V3](https://github.com/googlemaps/v3-utility-library/tree/master/markerclustererplus)

For info on how to use the library see the original documentation:

[MarkerClustererPlus reference](https://htmlpreview.github.io/?https://github.com/googlemaps/v3-utility-library/blob/master/markerclustererplus/docs/reference.html)


## Installation

In your Gemfile, add this line:

```ruby
gem 'markerclustererplus-rails'
```

You can include it by adding the following to your javascript application file:

```javascript
//= require markerclusterer
```

## Limitations

Note that to include the MarkerClustererPlus icons in the asset pipeline we override the original configuration for setting the icon properties. This means that changing the following properties will not have any effect when using this gem:

* imageExtension
* imagePath

This should not be a problem since the reason to using this gem in the first place is to include everything in the asset pipeline. Should you for some reason want to get the icons from somewhere else it should be possible to override this with the 'styles' property, although we have not tested this ourself.

