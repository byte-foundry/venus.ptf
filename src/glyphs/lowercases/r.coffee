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
		spacingLeft: 70 * spacing + (29) + serifWidth / 2
		spacingRight: 20 * spacing
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
					y: 0 + serifHeight + serifCurve
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight - serifHeight - serifCurve
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
								x: contours[1].nodes[1].x + 10
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
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: 0
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: xHeight
					directionY: -1
					right: false
			transformOrigin: Array( contours[0].nodes[1].expandedTo[1].x, contours[0].nodes[1].expandedTo[1].y )
			transforms: Array( [ 'skewY', spurHeight * (15) + 'deg' ] )
		#
		# The vertical serif is not yet enough convincing to be implemented
		#
		# 2:
		# 	base: 'serif-v'
		# 	parentAnchors:
		# 		0:
		# 			x: contours[1].nodes[0].expandedTo[1].x - serifHeight - serifCurve
		# 			y: contours[1].nodes[0].expandedTo[0].y
		# 		1:
		# 			x: contours[1].nodes[0].expandedTo[0].x - serifHeight - serifCurve
		# 			y: contours[1].nodes[0].expandedTo[1].y
		# 		2:
		# 			anchorLine: contours[1].nodes[0].expandedTo[0].x
		# 			right: false
		# 			baseRight: contours[1].nodes[0].expandedTo[0].point
		# 			directionY: -1
