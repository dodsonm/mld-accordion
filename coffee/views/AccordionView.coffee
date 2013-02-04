define ['jquery','underscore','backbone'], ($, _, Backbone) ->

	AccordionView = Backbone.View.extend
		el: $('#main')

		initialize: ->
			console.info '[AccordionView initialize]'
			_.bindAll @, 'render'

			do @render
		
		render: ->
			$(this.el).append '[AccordionView render]'

		

