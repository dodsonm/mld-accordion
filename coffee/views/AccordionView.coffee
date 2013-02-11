define ['jquery','underscore','backbone'], ($, _, Backbone) ->

	AccordionView = Backbone.View.extend

		initialize: ->
			console.info '[AccordionView initialize]'
			_.bindAll @

			do @render
			return @

		events:
			if Modernizr.touch
				'touchstart h2': 'toggleChild'
			else
				'click h2': 'toggleChild'

		render: ->
			console.info '[AccordionView render]'
			$bellows = $('h2').nextAll().andSelf()

			for b in $bellows
				$b = $ b
				if $b.prop('tagName') == 'H2'
					console.info $b.nextUntil('h2').wrapAll('<div style="color: olive" />')

			return @

		toggleChild: ->
			event.preventDefault()
			$(event.target).next('div').toggle()

			return @
