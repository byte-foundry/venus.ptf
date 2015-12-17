exports.glyphs['slash'] =
	unicode: '/'
	glyphName: "slash"
	characterName: "SOLIDUS"
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 0
		spacingRight: 0
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
					expand: Object({
						width: ( 50 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: 260 + (0)
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
