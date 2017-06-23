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
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 10
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
					typeOut: 'line'
					expand:
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[0].x + 200 * width + 250
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: - Math.min( 160, Math.max( 120, 136 * width )) + 'deg'
					typeIn: 'smooth'
					tensionOut: 1.2
					expand:
						width: Math.min(
							Math.max(
								( 115 / 115 ) * thickness * opticThickness * contrast * width,
								( 110 / 115 ) * thickness * opticThickness * contrast
							),
							( 180 / 115 ) * thickness * opticThickness * contrast
						)
						angle: 180 + 'deg'
						distr: 0
				1:
					x: 110 * width + (37)
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) * 0.43
					y: Math.max(0, serifHeight * serifArc )
					dirIn: 90 + 'deg'
					typeOut: 'line'
					tensionIn: 1.2
					expand:
						width: ( 150 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'skewX', - 15 * serifRotate + 'deg' ],
				[ 'translateX', ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness * 0.5 ) ) ]
			)
