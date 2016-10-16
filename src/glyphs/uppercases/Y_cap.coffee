exports.glyphs['Y_cap'] =
	unicode: 'Y'
	glyphName: 'Y'
	characterName: 'LATIN CAPITAL LETTER Y'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + serifWidth / 2
		spacingRight: 50 * spacing + 10 + serifWidth / 2
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (39)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[2].nodes[1].expandedTo[0].x
					y: ( 330 / 520 ) * xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 115 / 115 ) * thickness * opticThickness
						angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) + Math.PI / 2
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + 200 * width + 375 - (39)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) ) * contrast
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y + ( contours[0].nodes[1].expandedTo[0].y - contours[2].nodes[0].expandedTo[1].y ) * contrast
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 115 / 115 ) * thickness * contrast * opticThickness
						angle: Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) + Math.PI / 2
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + ( contours[1].nodes[0].x - contours[0].nodes[0].x ) / 2
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[2].nodes[0].x
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1].point
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-acute', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0].point
					noneAnchor: contours[2].nodes[1].expandedTo[0].point
					opposite: contours[2].nodes[1].expandedTo[1].point
		5:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1].point
					noneAnchor: contours[2].nodes[1].expandedTo[1].point
					opposite: contours[2].nodes[1].expandedTo[0].point
					reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
