exports.glyphs['parenright'] =
	unicode: ')'
	glyphName: 'parenright'
	characterName: 'RIGHT PARENTHESIS'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 20 * spacing + (51)
		spacingRight: 100 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight + overshoot * ( 35 / 10 )
					dirOut: - 44 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: ( 60 / 115 ) * thickness
						angle: - 131 + 'deg'
						distr: 0
					})
				1:
					x: 210 + 50 * width - (19)
					y: capHeight * ( 335 / 750 )
					dirOut: - 90 + 'deg'
					tensionOut: 1.1
					tensionIn: 1.1
					expand: Object({
						width: ( 75 / 115 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].x
					y: - 115
					dirIn: 42 + 'deg'
					tensionIn: 1.1
					expand: Object({
						width: ( 60 / 115 ) * thickness
						angle: 131 + 'deg'
						distr: 0
					})
