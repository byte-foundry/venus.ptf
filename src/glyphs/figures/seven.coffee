exports.glyphs['seven'] =
	unicode: '7'
	glyphName: 'seven'
	characterName: 'DIGIT SEVEN'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 30 * spacing
		spacingRight: 10 * spacing
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x + 200 * width + 250
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: - Math.min( 160, Math.max( 120, 136 * width )) + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: Math.min(
							Math.max(
								( 115 / 115 ) * thickness * opticThickness * contrast * width,
								( 110 / 115 ) * thickness * opticThickness * contrast
							),
							( 180 / 115 ) * thickness * opticThickness * contrast
						)
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: 110 * width + (37)
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) * 0.43
					y: 0
					dirIn: 90 + 'deg'
					typeOut: 'line'
					tensionIn: 1.2
					expand: Object({
						width: ( 150 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
