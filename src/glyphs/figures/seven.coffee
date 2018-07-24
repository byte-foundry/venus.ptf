exports.glyphs['seven'] =
	unicode: '7'
	glyphName: 'seven'
	characterName: 'DIGIT SEVEN'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
						width: ( ( 130 / 115 ) * thickness * opticThickness ) / Math.cos( Math.PI / 2 + contours[0].nodes[0].expand.angle )
						angle: ( - 90 ) / 180 * Math.PI - (10 * serifRotate) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].x + 200 * width + 250
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( 130 / 115 ) * thickness * opticThickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: - Math.min( 160,( Math.max( 120, 136 * width )) ) / 180 * Math.PI
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
						angle: Math.PI
						distr: 0
				1:
					x: 110 * width + (37)
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) * 0.43
					y: Math.max(0, serifHeight * serifArc )
					dirIn: Math.PI / 2
					typeOut: 'line'
					tensionIn: 1.2
					expand:
						width: ( 150 / 115 ) * thickness * opticThickness
						angle: Math.PI
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
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ],
			)
		1:
			base: ['none', 'serif-horizontal']
			id: 'toplefttop'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'scaleX', -1 ],
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ],
			)
