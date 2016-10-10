# TODO: serifRotate
exports.glyphs['h'] =
	unicode: 'h'
	glyphName: 'h'
	characterName: 'LATIN SMALL LETTER H'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + (29) + serifWidth / 2
		spacingRight: 50 * spacing + 70 + serifWidth / 2
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
					y: ascenderHeight - Math.max(0, serifHeight * serifArc ) # - ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness / 2 ) )
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
					x: contours[1].nodes[1].x
					y: Math.max(0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x + 100 + 200 * width,
						285 + 200 * width
					) - (29)
					y: xHeight - 205
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				2:
					x: Math.min(
						contours[1].nodes[3].expandedTo[1].x + ( contours[1].nodes[1].expandedTo[1].x - contours[1].nodes[3].expandedTo[1].x ) * 0.55,
						contours[1].nodes[1].expandedTo[0].x
					)
					y: xHeight + overshoot / 2
					dirOut: 180 + 'deg'
					type: 'smooth'
					# tensionOut: 1 * breakPath
					expand: Object({
						width: ( 113 / 115 ) * thickness * contrast
						angle: 180 - 113 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight - 150 - ( 50 / 115 ) * thickness
					dirIn: 90 + 'deg'
					expand: Object({
						width: ( 30 / 90 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0
					})
		# 2:
		# 	skeleton: false
		# 	closed: true
		# 	nodes:
		# 		0:
		# 			x: contours[0].nodes[1].expandedTo[1].x
		# 			y: ascenderHeight
		# 			typeOut: 'line'
		# 		1:
		# 			x: contours[0].nodes[1].expandedTo[1].x
		# 			y: contours[0].nodes[1].expandedTo[1].y
		# 			typeOut: 'line'
		# 		2:
		# 			x: contours[0].nodes[1].x
		# 			y: contours[0].nodes[1].expandedTo[1].y
		# 			typeOut: 'line'
		# 		3:
		# 			x: contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x
		# 			y: ascenderHeight
		# 			typeOut: 'line'
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
			base: 'serif-vertical'
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
		4:
			base: 'serif-vertical'
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
