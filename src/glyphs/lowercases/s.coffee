exports.glyphs['s'] =
	unicode: 's'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 30 + (24)
		spacingRight: 30
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 130 + (10)
					dirOut: - 67 + 'deg'
					expand: Object({
						width: ( 112 / 115 ) * thickness
						angle: 21 + 'deg'
						distr: 0.25
					})
				1:
					x: 265
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 90 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: 475 - (29)
					y: 140
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 180 + 5 + 'deg'
						distr: 0.25
					})
