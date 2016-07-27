exports.glyphs['eight'] =
	unicode: '8'
	glyphName: 'eight'
	characterName: 'DIGIT EIGHT'
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
					x: spacingLeft + (36)
					y: ( 205 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.15
					expand: Object({
						width: ( 145 / 115 ) * thickness
						angle: 4 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: ( 400 / 750 ) * capHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.15
					expand: Object({
						width: ( 80 / 115 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0.25
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 320 - (37),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 145 / 115 ) * thickness + 10
					)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					tensionOut: 1.15
					type: 'smooth'
					expand: Object({
						width: ( 145 / 115 ) * thickness
						angle: 175 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					tensionOut: 1.15
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + 30 + (31)
					y: ( 565 / 750 ) * capHeight - (3)
					dirOut: 90 + 'deg'
					tensionOut: 1.1
					type: 'smooth'
					expand: Object({
						width: ( 125 / 115 ) * thickness
						angle: - 5 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					expand: Object({
						width: ( 110 / 115 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[1].nodes[0].expandedTo[0].x + 200 * width + 260 - (31),
						contours[1].nodes[0].expandedTo[1].x + 0.75 * ( 125 / 115 ) * thickness + 10
					)
					y: contours[1].nodes[0].y
					dirOut: - 90 + 'deg'
					tensionOut: 1.15
					type: 'smooth'
					expand: Object({
						width: ( 125 / 115 ) * thickness
						angle: 180 + 5 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirOut: 180 + 'deg'
					tensionOut: 1.15
					type: 'smooth'
					expand: Object({
						width: ( 80 / 115 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0.5
					})
