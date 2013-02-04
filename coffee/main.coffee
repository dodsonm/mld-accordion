require.config
  paths: 
    jquery: 'libs/jquery.min',
    underscore: 'libs/underscore.min',
    backbone: 'libs/backbone.min',
    accordionView: 'views/AccordionView',
    templates: '../templates'

require ['app'], (App) ->
  do App.initialize
