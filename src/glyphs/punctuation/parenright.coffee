exports.glyphs['parenright'] =
	unicode: ')'
	glyphName: 'parenright'
	characterName: 'RIGHT PARENTHESIS'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 100 * spacing
		spacingRight: 20 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + 50 * width + 150
					y: capHeight + 45
					dirOut: - 140 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: ( 60 / 115 ) * thickness
						angle: - 48 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + (19)
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
			transformOrigin: Array( (contours[0].nodes[2].expandedTo[1].x + spacingRight) / 2, 0 )
			transforms: Array(
				['translateY', (capHeight + 45) - 115 ],
				['rotate', 180 + 'deg']
			)
