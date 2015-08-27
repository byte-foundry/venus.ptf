exports.glyphs['parenleft'] =
	unicode: '('
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 100 * spacing + (19)
		spacingRight: 20 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 250 + 50 * width + (0)
					y: capHeight + overshoot * ( 35 / 10 )
					dirOut: - 140 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: ( 60 / 115 ) * thickness
						angle: - 48 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft
					y: capHeight * ( 335 / 750 )
					dirOut: - 90 + 'deg'
					tensionOut: 1.1
					tensionIn: 1.1
					expand: Object({
						width: ( 75 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].x
					y: - 115
					dirIn: 140 + 'deg'
					tensionIn: 1.1
					expand: Object({
						width: ( 60 / 115 ) * thickness
						angle: 48 + 'deg'
						distr: 0
					})
