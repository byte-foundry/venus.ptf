# TODO: serifRotate
exports.glyphs['k'] =
	unicode: 'k'
	glyphName: 'k'
	characterName: 'LATIN SMALL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + (29)
		spacingRight: 50 * spacing + 10
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
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x - ( 108 / 115 ) * thickness * 0.25
					y: ( 195 / 520 ) * xHeight + (5)
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 140 / 115 ) * thickness * contrast * contrastExtremity
						angle: 180 + 90 + 'deg'
						distr: 0.75
					})
				1:
					x: Math.max(
						contours[2].nodes[0].expandedTo[1].x - 15 - (35),
						contours[0].nodes[0].expandedTo[1].x + 50 + 0.75 * (( 140 / 115 ) * thickness * contrast + (width - 1) * ( 60 / 115 ) * thickness)
					)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 140 / 115 ) * thickness * contrast + (width - 1) * ( 60 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: 177 + 200 * width + (98)
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 107 + (98),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * (( 138 / 115 ) * thickness + (width - 1) * ( 20 / 115 ) * thickness) + 10
					)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 138 / 115 ) * thickness + (width - 1) * ( 20 / 115 ) * thickness # TODO: apply this hack on each oblic
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: Utils.onLine({
						y: ( 325 / 520 ) * xHeight + (5)
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: ( 325 / 520 ) * xHeight + (5)
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 127 / 115 ) * thickness + (width - 1) * ( 4 / 115 ) * thickness
						angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point )
						distr: 0.75
					})
	components:
		0:
			base: 'serif-vertical'
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
		1:
			base: 'serif-vertical'
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: 'serif-vertical'
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					# spur: 20
					reversed: true
			transformOrigin: contours[0].nodes[1].point
			transforms: Array(
				[ 'scaleY', -1 ],
				# [ 'skewY', 15 * serifRotate + 'deg' ],
				# [ 'translateY', - ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness / 2 ) ) ]
			)
		3:
			base: 'serif-oblique-acute'
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: 'serif-oblique-obtuse'
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1].point
			transformOrigin: contours[1].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		5:
			base: 'serif-oblique-obtuse'
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1].point
					opposite: contours[2].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[2].nodes[1].expandedTo[1].point
					reversed: true
					scaleX: -1
