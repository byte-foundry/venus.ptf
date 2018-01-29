exports.glyphs['P_cap'] =
	unicode: 'P'
	glyphName: 'P'
	characterName: 'LATIN CAPITAL LETTER P'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: 0
					expand:
						width: ( 105 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: Math.max(
						contours[1].nodes[2].expandedTo[1].x - 135,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: capHeight
					dirIn: Math.PI
					typeOut: 'smooth'
					tensionOut: 1.1
					expand:
						width: ( 105 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( - 93 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[1].expandedTo[1].x + 50 + 250 * width + (100)
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 370 - (100),
						contours[0].nodes[0].expandedTo[1 ].x + 0.75 * ( 135 / 115 ) * thickness * opticThickness + 10
					)
					y: ( 525 / 750 ) * capHeight
					dirOut:( - 90 ) / 180 * Math.PI
					typeIn: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
				3:
					x: Math.max(
						contours[1].nodes[2].expandedTo[1].x - 135,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: contours[1].nodes[4].expandedTo[0].y
					dirIn: 0
					typeOut: 'line'
					tensionIn: 1.1
					expand:
						width: ( 105 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( 180 - 93 ) / 180 * Math.PI
						distr: 0
				4:
					x: contours[0].nodes[1].x
					y: ( 300 / 750 ) * capHeight * crossbar + (26)
					typeIn: 'line'
					expand:
						width: ( 105 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: Math.PI / 2
						distr: 0.25
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerLeftInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
