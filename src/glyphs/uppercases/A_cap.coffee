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
			angle: Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[2].expandedTo[1].point )
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
					expand: Object({
						width: ( 30 / 115 ) * thickness * contrast * opticThickness * Math.sqrt( width ) + thickness * contrast * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x:
						contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 -
						( 142 / 115 ) * thickness / 2
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 22 / 115 ) * thickness * contrast * opticThickness * Math.sqrt( width ) + thickness * contrast * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x:
						contours[0].nodes[1].expandedTo[0].x +
						( 137 / 115 ) * thickness / 2 +
						( 4 / 115 ) * thickness
					y: contours[0].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 26 / 115 ) * thickness * opticThickness * Math.sqrt( width ) + thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.5
					})
				3:
					# x: contours[0].nodes[0].expandedTo[0].x + 505 + 200 * width + (58)
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 505 - (34),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 145 / 115 ) * thickness * opticThickness + 10
					)
					y: Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 30 / 115 ) * thickness * opticThickness * Math.sqrt( width ) + thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						on: [ contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[3].expandedTo[1].point ]
						# on: [ contours[0].nodes[2].point, contours[0].nodes[3].point ]
						y: ( 260 / 750 ) * capHeight * crossbar
					})
					y: ( 260 / 750 ) * capHeight * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * contrast * opticThickness
						angle: Utils.lineAngle( contours[0].nodes[3].expandedTo[1].point, contours[0].nodes[2].expandedTo[1].point )
						# angle: 90 + 'deg'
						distr: 1
					})
				1:
					x: Utils.onLine({
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
						# on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]
						y: ( 260 / 750 ) * capHeight * crossbar
						})
					y: ( 260 / 750 ) * capHeight * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * contrast * opticThickness
						angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
						# angle: 90 + 'deg'
						distr: 1
					})
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
					scaleX: -1
					reversed: true
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[1].point
					noneAnchor: contours[0].nodes[3].expandedTo[1].point
					opposite: contours[0].nodes[3].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[2].expandedTo[1].point
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[0].point
					noneAnchor: contours[0].nodes[3].expandedTo[0].point
					opposite: contours[0].nodes[3].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[2].expandedTo[0].point
					scaleX: -1
					reversed: true
