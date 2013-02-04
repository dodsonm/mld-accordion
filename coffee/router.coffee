define ['jquery', 'underscore', 'backbone', 'accordionView'], 
	($, _, Backbone, AccordionView) ->
  
		AppRouter = Backbone.Router.extend
			routes: 
				'all': 'expandAll',
				'*actions': 'defaultAction'

		initialize = -> 
			app_router = new AppRouter;

			app_router.on 'route:expandAll', () ->
				console.info 'expandAll'
				###
				contributorsView = new ContributorsView()
				###

			app_router.on 'route:defaultAction', (actions) ->
				console.info 'default'
				accordionView = new AccordionView()
				###
				homeView = new HomeView()
				do homeView.render
				footerView = new FooterView()
				###

			Backbone.history.start();

		return initialize: initialize
