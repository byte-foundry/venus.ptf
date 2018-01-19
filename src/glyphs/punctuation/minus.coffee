exports.glyphs['minus'] =
	unicode: '−'
	glyphName: 'minus'
	characterName: 'MINUS SIGN'
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
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
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
						width: ( 70 / 115 ) * thickness
						angle: Math.PI / 2
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + 200 * width + 315
					y: ( 262 / 750 ) * capHeight + (1)
					typeIn: 'line'
					expand:
						width: ( 70 / 115 ) * thickness
						angle: Math.PI / 2
						distr: 0.5
