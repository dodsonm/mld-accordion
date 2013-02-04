define ['jquery', 'underscore', 'backbone', 'router'], 
  ($, _, Backbone, Router) ->
    initialize = ->
      do Router.initialize
    return initialize: initialize
  
