define ['jquery', 'underscore', 'backbone', 'accordionView'],
	($, _, Backbone, AccordionView) ->

		AppRouter = Backbone.Router.extend
			routes:
				'*actions': 'defaultAction'

		initialize = ->
			app_router = new AppRouter;

			app_router.on 'route:defaultAction', (actions) ->
				console.info 'default'
				accordionView = new AccordionView
					el: '#main'
					heading: 'h2'

			Backbone.history.start();

		return initialize: initialize
