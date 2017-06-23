exports.glyphs['fraction'] =
	unicode: '⁄'
	glyphName: 'fraction'
	characterName: 'FRACTION SLASH'
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
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 60
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 40 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 380
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 40 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0
