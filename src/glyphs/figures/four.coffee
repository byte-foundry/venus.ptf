exports.glyphs['four'] =
	unicode: '4'
	glyphName: 'four'
	characterName: 'DIGIT FOUR'
	ot:
		advanceWidth: contours[1].nodes[5].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					typeOut: 'line'
					expand:
						width: ( 105 / defaultThickness ) * thickness * opticThickness
						angle: 0
						distr: 1
				1:
					x: contours[0].nodes[2].x
					y: ( 553 / 750 ) * capHeight
					typeIn: 'line'
					typeOut: 'line'
					expand:
						width: ( 135 / defaultThickness ) * thickness * opticThickness
						angle: 0
						distr: 0.75
				2:
					x: contours[1].nodes[1].x + ( contours[1].nodes[5].x - contours[1].nodes[1].x ) * Math.max( ( 0.75 - 0.15 * width + 0.15 ), 0.6 )
					y: Math.max(0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 135 / defaultThickness ) * thickness * opticThickness
						angle: 0
						distr: 0.75
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 108 / defaultThickness ) * thickness * opticThickness * contrast
						angle: - Math.max( 15 * width,( 15 ) ) / 180 * Math.PI
						distr: 0
				1:
					x: spacingLeft
					y: ( ( 200 + 115 * contrast ) / 750 ) * capHeight
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 114 / defaultThickness ) * thickness * opticThickness * contrast
						angle: - Math.max( 7 * width,( 7 ) ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 105 / defaultThickness ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				3:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 105 / defaultThickness ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 1
				4:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[0].y + ( 15 / defaultThickness ) * thickness * contrast
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 120 / defaultThickness ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 1
				5:
					x: 300 + 275 * width
					x: contours[1].nodes[1].x + 200 * width + 350
					y: contours[1].nodes[4].y
					typeIn: 'line'
					expand:
						width: ( 120 / defaultThickness ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 1
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[0]
					noneAnchor: contours[0].nodes[2].expandedTo[0]
					opposite: contours[0].nodes[2].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[1]
					noneAnchor: contours[0].nodes[2].expandedTo[1]
					opposite: contours[0].nodes[2].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[2].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
