exports.glyphs['endash'] =
	unicode: '–'
	glyphName: 'endash'
	characterName: 'EN DASH'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 5
		spacingRight: 50 * spacing + 5
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 262 / 750 ) * capHeight + (1)
					typeOut: 'line'
					expand:
						width: ( 95 / defaultThickness ) * thickness
						angle: Math.PI / 2
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + 200 * width + 200
					y: ( 262 / 750 ) * capHeight + (1)
					typeIn: 'line'
					expand:
						width: ( 95 / defaultThickness ) * thickness
						angle: Math.PI / 2
						distr: 0.5
