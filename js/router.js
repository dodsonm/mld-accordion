// Generated by CoffeeScript 1.4.0
(function() {

  define(['jquery', 'underscore', 'backbone', 'accordionView'], function($, _, Backbone, AccordionView) {
    var AppRouter, initialize;
    AppRouter = Backbone.Router.extend({
      routes: {
        'all': 'expandAll',
        '*actions': 'defaultAction'
      }
    });
    initialize = function() {
      var app_router;
      app_router = new AppRouter;
      app_router.on('route:expandAll', function() {
        return console.info('expandAll');
        /*
        				contributorsView = new ContributorsView()
        */

      });
      app_router.on('route:defaultAction', function(actions) {
        var accordionView;
        console.info('default');
        return accordionView = new AccordionView();
        /*
        				homeView = new HomeView()
        				do homeView.render
        				footerView = new FooterView()
        */

      });
      return Backbone.history.start();
    };
    return {
      initialize: initialize
    };
  });

}).call(this);
