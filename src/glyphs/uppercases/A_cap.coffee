exports.glyphs['A_cap'] =
	unicode: 'A'
	glyphName: 'A'
	characterName: 'LATIN CAPITAL LETTER A'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 10 + serifWidth / 2
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[2].x
			y: capHeight + diacriticHeight
		1:
			x: contours[0].nodes[3].expandedTo[0].x
			y: contours[0].nodes[3].expandedTo[0].y
			angle: Utils.lineAngle({x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y}, {x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y} )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (34) + serifWidth / 2
					y: Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 30 / 115 ) * thickness * contrast * opticThickness * Math.sqrt( width ) + thickness * contrast * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x:
						contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 -
						( 142 / 115 ) * thickness / 2
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 22 / 115 ) * thickness * contrast * opticThickness * Math.sqrt( width ) + thickness * contrast * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
				2:
					x:
						contours[0].nodes[1].expandedTo[0].x +
						( 137 / 115 ) * thickness / 2 +
						( 4 / 115 ) * thickness
					y: contours[0].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 26 / 115 ) * thickness * opticThickness * Math.sqrt( width ) + thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.5
				3:
					# x: contours[0].nodes[0].expandedTo[0].x + 505 + 200 * width + (58)
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 505 - (34),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 145 / 115 ) * thickness * opticThickness + 10
					)
					y: Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 30 / 115 ) * thickness * opticThickness * Math.sqrt( width ) + thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						on: [ contours[0].nodes[2].expandedTo[1], contours[0].nodes[3].expandedTo[1] ]
						# on: [ contours[0].nodes[2], contours[0].nodes[3] ]
						y: ( 260 / 750 ) * capHeight * crossbar
					})
					y: ( 260 / 750 ) * capHeight * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 110 / 115 ) * thickness * contrast * opticThickness
						angle: Utils.lineAngle({x: contours[0].nodes[3].expandedTo[1].x, y: contours[0].nodes[3].expandedTo[1].y}, {x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y} )
						# angle: 90 + 'deg'
						distr: 1
				1:
					x: Utils.onLine({
						on: [ contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1] ]
						# on: [ contours[0].nodes[0], contours[0].nodes[1] ]
						y: ( 260 / 750 ) * capHeight * crossbar
						})
					y: ( 260 / 750 ) * capHeight * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					typeIn: 'line'
					expand:
						width: ( 110 / 115 ) * thickness * contrast * opticThickness
						angle: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y}, {x: contours[0].nodes[1].expandedTo[1].x, y: contours[0].nodes[1].expandedTo[1].y} )
						# angle: 90 + 'deg'
						distr: 1
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
					scaleX: -1
					reversed: true
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[1]
					noneAnchor: contours[0].nodes[3].expandedTo[1]
					opposite: contours[0].nodes[3].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[2].expandedTo[1]
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[0]
					noneAnchor: contours[0].nodes[3].expandedTo[0]
					opposite: contours[0].nodes[3].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[2].expandedTo[0]
					scaleX: -1
					reversed: true
