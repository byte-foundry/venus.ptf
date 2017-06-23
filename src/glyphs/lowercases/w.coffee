exports.glyphs['w'] =
	unicode: 'w'
	glyphName: 'w'
	characterName: 'LATIN SMALL LETTER W'
	ot:
		advanceWidth: contours[3].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (30) + serifWidth / 2
		spacingRight: 50 * spacing + 10 + serifWidth / 2
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 122 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2 - ( 10 / 115 ) * thickness * contrast
					y: 0
					typeIn: 'line'
					expand:
						width: ( 90 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x + ( 25 / 115 ) * thickness * contrast * contrastExtremity
					y: 0
					typeOut: 'line'
					expand:
						width: ( 90 / 115 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[3].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					y: xHeight
					typeIn: 'line'
					expand:
						width: ( 100 / 115 ) * thickness * contrast
						angle: 180 + 'deg'
						distr: 0.5
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x - thickness * contrast / 2 + 115 / 2
					x: contours[1].nodes[1].expandedTo[1].x
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 100 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0
				1:
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[3].nodes[1].expandedTo[0].x - contours[2].nodes[0].expandedTo[0].x ) / 2 - ( 15 / 115 ) * thickness * contrast
					y: 0
					typeIn: 'line'
					expand:
						width: ( 90 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[2].nodes[1].expandedTo[1].x + ( 25 / 115 ) * thickness * contrast * contrastExtremity
					y: 0
					typeOut: 'line'
					expand:
						width: ( 90 / 115 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 200 * width + 507 - (31)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 122 / 115 ) * thickness * contrast
						angle: 180 + 'deg'
						distr: 0.25
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[0]
					noneAnchor: contours[3].nodes[1].expandedTo[0]
					opposite: contours[3].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[3].nodes[0].expandedTo[0]
			transformOrigin: contours[3].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-acute', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[1]
					noneAnchor: contours[3].nodes[1].expandedTo[1]
					opposite: contours[3].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[3].nodes[0].expandedTo[1]
					scaleX: -1
					reversed: true
			transformOrigin: contours[3].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
