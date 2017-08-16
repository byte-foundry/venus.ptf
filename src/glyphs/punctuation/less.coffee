exports.glyphs['less'] =
	unicode: '<'
	glyphName: 'less'
	characterName: 'LESS-THAN SIGN'
	ot:
		advanceWidth: contours[0].nodes[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 60
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x + 450 * width + (0)
					y: ( 470 / 520 ) * xHeight
					typeOut: 'line'
					expand:
						width: ( 95 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.25
				1:
					x: spacingLeft
					y: ( 260 / 520 ) * xHeight
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: ( 85 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.5
				2:
					x: spacingLeft
					y: ( 260 / 520 ) * xHeight
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: ( 85 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
				3:
					x: contours[0].nodes[0].x
					y: ( 50 / 520 ) * xHeight
					typeIn: 'line'
					expand:
						width: ( 95 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0.25
