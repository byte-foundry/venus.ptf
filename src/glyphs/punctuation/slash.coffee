exports.glyphs['slash'] =
	unicode: '/'
	glyphName: 'slash'
	characterName: 'SOLIDUS'
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
		spacingLeft: 50 * spacing + 0
		spacingRight: 50 * spacing + 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					typeOut: 'line'
					expand:
						width: ( 50 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 220
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 50 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0
