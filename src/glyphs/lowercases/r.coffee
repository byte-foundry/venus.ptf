# TODO: vertical serif?
exports.glyphs['r'] =
	unicode: 'r'
	glyphName: 'r'
	characterName: 'LATIN SMALL LETTER R'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + (29) + serifWidth / 2
		spacingRight: 50 * spacing + 20
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: Math.max(0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight - Math.max(0, serifHeight * serifArc )
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
					expandedTo:
						[
							{
								x: contours[1].nodes[1].x + 10 # + serifHeight + serifCurve
								y: contours[1].nodes[1].expandedTo[0].y
							}
							{
								x: contours[1].nodes[0].expandedTo[0].x
								y: contours[1].nodes[1].expandedTo[1].y
							}
						]
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x + 155 * width,
						140 + 200 * width
					)
					y: xHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: ( 125 / 115 ) * thickness * contrast
						angle: 180 - 95 + 'deg'
						distr: 1
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight - 240 - ( 50 / 115 ) * thickness
					dirOut: 90 + 'deg'
					expand: Object({
						width: ( 30 / 90 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0
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
		# 3:
		# 	base: 'serif-horizontal'
		# 	id: 'topright'
		# 	parentAnchors:
		# 		0:
		# 			base: contours[1].nodes[0].expandedTo[0].point
		# 			opposite: contours[1].nodes[0].expandedTo[1].point
