exports.glyphs['backslash'] =
	unicode: '\\'
	glyphName: 'backslash'
	characterName: 'REVERSE SOLIDUS'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
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
					x: 260 + (30)
					y: 0
					typeOut: 'line'
					expand:
						width: thickness * ( 50 / 115 )
						angle: 0 + 'deg'
						distr: 0
				1:
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 50 / 115 )
						angle: 0 + 'deg'
						distr: 0
