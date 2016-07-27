exports.glyphs['underscore'] =
	unicode: '_'
	glyphName: 'underscore'
	characterName: 'LOW LINE'
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
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: - 100
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x + 200 * width + 380
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
