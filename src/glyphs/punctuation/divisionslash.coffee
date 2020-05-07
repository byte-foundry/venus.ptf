exports.glyphs['divisionslash'] =
	unicode: '∕'
	glyphName: 'uni2215'
	characterName: 'DIVISION SLASH'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
						width: ( 40 / defaultThickness ) * thickness
						angle: 0
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 380
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 40 / defaultThickness ) * thickness
						angle: 0
						distr: 0
