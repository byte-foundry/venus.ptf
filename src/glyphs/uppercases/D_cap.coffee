exports.glyphs['D_cap'] =
	unicode: 'D'
	glyphName: 'D'
	characterName: 'LATIN CAPITAL LETTER D'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 85 + (34) + serifWidth / 2
		spacingRight: 50 * spacing + 55
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
		1:
			x: contours[0].nodes[0].expandedTo[0].x - 80
			y: contours[1].nodes[4].expandedTo[1].y + ( contours[1].nodes[0].expandedTo[1].y - contours[1].nodes[4].expandedTo[1].y ) * 0.5
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
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x - 100 * width - 290,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: capHeight
					type: 'smooth'
					dirOut: 0 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: - 87 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 425 - (36),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 145 / 115 ) * thickness * opticThickness + 10
					)
					y: ( 375 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.13
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x - 100 * width - 260,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: 0
					dirIn: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.13
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: 95 + 'deg'
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
