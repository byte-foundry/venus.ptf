# TODO: thickness
exports.glyphs['y'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + serifWidth / 2
		spacingRight: 50 * spacing + 10 + serifWidth / 2
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x + 35
					y: Math.min(
						( 200 / 250 ) * descender,
						contours[0].nodes[2].expandedTo[1].y - ( 100 / 115 ) * thickness - 15
					)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 115 ) * thickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x + 50
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: ( 100 / 115 ) * thickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					# x: 275 - (21)
					# x: contours[0].nodes[0].x + 200 * width + 30 - (21)
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5 + ( 7 / 90 ) * thickness
					y: ( ( 85 / 115 ) * thickness / 250 ) * descender + (12)
					dirIn: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[2].point )
					tensionIn: 1.3
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 115 ) * thickness * contrast * contrastExtremity
						angle: 180 - 26 + 'deg'
						distr: 0.25
					})
				3:
					# x: 480 - (33)
					x: Math.max(
						contours[1].nodes[0].expandedTo[0].x + 200 * width + 270 - (33),
						contours[1].nodes[0].expandedTo[1].x + 0.25 * ( 130 / 115 ) * thickness * contrast + 10
					)
					# x: contours[1].nodes[0].expandedTo[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 130 / 115 ) * thickness * contrast
						angle: 180 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (32) - serifWidth / 2
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( 15 / 115 ) * thickness
					y: contours[0].nodes[2].expandedTo[1].y - ( 10 / 115 ) * thickness
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 180 / 115 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[3].expandedTo[1].point, contours[0].nodes[2].expandedTo[1].point ) + Math.PI
						distr: 0
					})
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
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
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
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
		2:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[0].point
					noneAnchor: contours[0].nodes[3].expandedTo[0].point
					opposite: contours[0].nodes[3].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[2].expandedTo[0].point
			transformOrigin: contours[0].nodes[3].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-acute', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[1].point
					noneAnchor: contours[0].nodes[3].expandedTo[1].point
					opposite: contours[0].nodes[3].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[2].expandedTo[1].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[3].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
