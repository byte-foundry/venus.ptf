exports.glyphs['greater'] =
	unicode: '>'
	glyphName: 'greater'
	characterName: 'GREATER-THAN SIGN'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
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
		spacingRight: 50 * spacing + 45
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 470 / 520 ) * xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 95 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.25
					})
				1:
					x: spacingLeft + 450 * width + (0)
					y: ( 260 / 520 ) * xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 85 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.5
					})
				2:
					x: contours[0].nodes[1].x
					y: ( 260 / 520 ) * xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 85 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				3:
					x: contours[0].nodes[0].x
					y: ( 50 / 520 ) * xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 95 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0.25
					})
