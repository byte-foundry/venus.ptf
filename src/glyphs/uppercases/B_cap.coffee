exports.glyphs['B_cap'] =
	unicode: 'B'
	glyphName: 'B'
	characterName: 'LATIN CAPITAL LETTER B'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 85 + (34) + serifWidth / 2
		spacingRight: 50 * spacing + 35
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y # capHeight
					dirOut: 0 + 'deg'
					# typeOut: 'line'
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x - 100 * width - 175,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: capHeight # contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness * contrast
						angle: - 87 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 335 - (35),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 140 / 115 ) * thickness * opticThickness + 10
					)
					y: ( 550 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					expand: Object({
						width: ( 140 / 115 ) * thickness * opticThickness
						angle: 180 + 4 + 'deg'
						distr: 0.25
					})
				3:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x - 100 * width - 155,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: ( 400 / 750 ) * capHeight * crossbar + (14)
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 81 / 115 ) * thickness * opticThickness * contrast
						angle: 180 - 42 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[0].y
					expand: Object({
						width: Math.sin( 42 / 180 * Math.PI ) * ( 81 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[4].expandedTo[1].y - ( 25 / 115 ) * thickness * contrast
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 75 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[2].nodes[2].expandedTo[0].x - 100 * width - 145,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: contours[2].nodes[0].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 117 / 115 ) * thickness * opticThickness * contrast
						angle: - 140 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 405 - (36),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 146 / 115 ) * thickness * opticThickness + 10
					)
					y: ( 220 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: ( 146 / 115 ) * thickness * opticThickness
						angle: 180 - 6 + 'deg'
						distr: 0.25
					})
				3:
					x: Math.max(
						contours[2].nodes[2].expandedTo[0].x - 100 * width - 175,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: 0
					dirIn: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					expand: Object({
						width: ( 112 / 115 ) * thickness * opticThickness * contrast
						angle: 110 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: 0 + 'deg'
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
