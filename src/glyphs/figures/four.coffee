exports.glyphs['four'] =
	unicode: '4'
	glyphName: 'four'
	characterName: 'DIGIT FOUR'
	ot:
		advanceWidth: contours[1].nodes[5].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 25
		spacingRight: 50 * spacing + 20
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
					x: contours[0].nodes[2].expandedTo[1].x
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[2].x
					y: ( 553 / 750 ) * capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[1].nodes[1].x + ( contours[1].nodes[5].x - contours[1].nodes[1].x ) * Math.max( ( 0.75 - 0.15 * width + 0.15 ), 0.6 )
					y: Math.max(0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 108 / 115 ) * thickness * opticThickness * contrast
						angle: - Math.max( 15 * width, 15 ) + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft
					y: ( ( 200 + 115 * contrast ) / 750 ) * capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 114 / 115 ) * thickness * opticThickness * contrast
						angle: - Math.max( 7 * width, 7 ) + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				3:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 1
					})
				4:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[0].y + ( 15 / 115 ) * thickness * contrast
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 120 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 1
					})
				5:
					x: 300 + 275 * width
					x: contours[1].nodes[1].x + 200 * width + 350
					y: contours[1].nodes[4].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 120 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 1
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[0].point
					noneAnchor: contours[0].nodes[2].expandedTo[0].point
					opposite: contours[0].nodes[2].expandedTo[1].point
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[1].point
					noneAnchor: contours[0].nodes[2].expandedTo[1].point
					opposite: contours[0].nodes[2].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[2].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
