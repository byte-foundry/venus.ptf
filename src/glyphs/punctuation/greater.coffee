exports.glyphs['greater'] =
	unicode: '>'
	glyphName: 'greater'
	characterName: 'GREATER-THAN SIGN'
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
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 45
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 470 / 520 ) * xHeight
					typeOut: 'line'
					expand:
						width: ( 95 / 115 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.25
				1:
					x: spacingLeft + 450 * width + (0)
					y: ( 260 / 520 ) * xHeight
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: ( 85 / 115 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0.5
				2:
					x: contours[0].nodes[1].x
					y: ( 260 / 520 ) * xHeight
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: ( 85 / 115 ) * thickness
						angle: Math.PI / 2
						distr: 0.5
				3:
					x: contours[0].nodes[0].x
					y: ( 50 / 520 ) * xHeight
					typeIn: 'line'
					expand:
						width: ( 95 / 115 ) * thickness
						angle: Math.PI / 2
						distr: 0.25
