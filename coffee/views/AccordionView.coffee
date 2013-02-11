###
	@heading is used to determine the toggle links, the 'keys'
	of the accordion. Then, we select the next adjacent siblings
	until the next @heading to determine the 'bellows', i.e.
	the items to be toggled.
###

define ['jquery','underscore','backbone'], ($, _, Backbone) ->

	AccordionView = Backbone.View.extend

		initialize: ->
			console.info '[AccordionView initialize]'
			key = @objects.heading || 'h2'
			_.bindAll @

			do @render
			return @

		events:
			if Modernizr.touch
				'touchstart ' + @key: 'toggleChild'
			else
				'click ' + @key: 'toggleChild'

		render: ->
			console.info '[AccordionView render]'
			$bellows = $(key).nextAll().andSelf()

			for b in $bellows
				$b = $ b
				if $b.prop('tagName') == @key.toUppercase()
					console.info $b.nextUntil(key).wrapAll('<div style="color: olive" />')

			return @

		toggleChild: ->
			event.preventDefault()
			$(event.target).next('div').toggle()

			return @
