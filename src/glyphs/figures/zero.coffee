exports.glyphs['zero'] =
	unicode: '0'
	glyphName: 'zero'
	characterName: 'DIGIT ZERO'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 55
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (30)
					y: ( 375 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					tensionOut: 1.05
					tensionIn: 1.1
					type: 'smooth'
					expand: Object({
						width: ( 140 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.05
					tensionOut: 1.05
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: 400 + 245 * width - (35)
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 390 - (30),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 140 / 115 ) * thickness * opticThickness + 10
					)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.05
					tensionOut: 1.1
					expand: Object({
						width: ( 140 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
