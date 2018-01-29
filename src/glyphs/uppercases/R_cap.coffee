exports.glyphs['R_cap'] =
	unicode: 'R'
	glyphName: 'R'
	characterName: 'LATIN CAPITAL LETTER R'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 85 + (34) + serifWidth / 2
		spacingRight: 50 * spacing + 35 + serifWidth / 2
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
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
					# x: Math.max(
					# 	contours[0].nodes[0].expandedTo[1].x + 165,
					# 	contours[0].nodes[0].expandedTo[1].x
					# )
					x: contours[1].nodes[3].x
					y: capHeight
					dirIn: Math.PI
					typeOut: 'smooth'
					tensionOut: 1.1
					expand:
						width: ( 105 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( - 93 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 370 + 200 * width - (100),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 135 / 115 ) * thickness * opticThickness + 10
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
					y: ( 320 / 750 ) * capHeight * crossbar + (26)
					dirIn: 0
					typeOut: 'line'
					tensionIn: 1.1
					expand:
						width: ( 105 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( 180 - 93 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[0].x
					y: contours[1].nodes[3].expandedTo[0].y
					expand:
						width: Math.cos( 3 / 180 * Math.PI) * ( 105 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: Math.PI / 2
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 265 + 200 * width - (40)
					x: contours[1].nodes[2].expandedTo[0].x
					y: Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 155 / 115 ) * thickness * opticThickness
						angle: 0
						distr: 0.8
				1:
					x: contours[1].nodes[3].x - (10)
					y: contours[1].nodes[3].y - (6)
					typeIn: 'line'
					expand:
						width: ( 155 / 115 ) * thickness * opticThickness
						angle: 0
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
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			class: 'obtuseLowerRight'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1]
					noneAnchor: contours[2].nodes[0].expandedTo[1]
					opposite: contours[2].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[2].nodes[1].expandedTo[1]
					scaleX: -1
					reversed: true
