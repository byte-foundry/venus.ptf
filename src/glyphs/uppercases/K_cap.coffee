exports.glyphs['K_cap'] =
	unicode: 'K'
	glyphName: 'K'
	characterName: 'LATIN CAPITAL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 85 + (34)
		spacingRight: 50 * spacing + 10
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
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
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
					x: contours[0].nodes[0].expandedTo[1].x - ( 108 / 115 ) * thickness * 0.25
					y: ( 270 / 750 ) * capHeight + (5)
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 8 / 115 ) * thickness * opticThickness * contrast * contrastExtremity * Math.sqrt( width ) + thickness * contrast * contrastExtremity * opticThickness
						angle: 180 + 166 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[2].nodes[0].expandedTo[1].x - 25 - (36)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 115 ) * thickness * opticThickness * contrast * Math.sqrt( width ) + thickness * contrast * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 265 + 200 * width - (45)
					y: Math.max( 0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 45 / 115 ) * thickness * opticThickness * Math.sqrt( width ) + thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: Utils.onLine({
						y: ( 490 / 750 ) * capHeight - (32)
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: ( 490 / 750 ) * capHeight - (32)
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ) + Math.PI
						distr: 0.75
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
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
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
		3:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1].point
					noneAnchor: contours[0].nodes[1].expandedTo[1].point
					opposite: contours[0].nodes[1].expandedTo[0].point
			transformOrigin: contours[0].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0].point
					noneAnchor: contours[2].nodes[0].expandedTo[0].point
					opposite: contours[2].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[2].nodes[1].expandedTo[0].point
		5:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1].point
					noneAnchor: contours[2].nodes[0].expandedTo[1].point
					opposite: contours[2].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[2].nodes[1].expandedTo[1].point
					scaleX: -1
					reversed: true
		6:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1].point
			transformOrigin: contours[1].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		7:
			base: ['serif-oblique-acute', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					noneAnchor: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
