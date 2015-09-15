exports.glyphs['r'] =
	unicode: 'r'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 70 * spacing + (29) + serifWidth / 2
		spacingRight: 20 * spacing
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
								x: contours[0].nodes[0].expandedTo[1].x
								y: xHeight - Math.max(
										105 + ( 1 - thickness / 60 ) * 150,
										105
									)
								dirOut: # 56 + 'deg'
									Math.max(
										Math.min(
											# 60 is the breakpoint where thickness takes effect
											# 50 is the velocity
											# 80 is the max dirOut
											80 + ( 1 - thickness / 60 ) * 50,
											80 # dirOut must not be over 80 deg
										),
										82 # dirOut must not be under 56 deg
									) + 'deg'
								tensionOut: 1 * breakPath
							}
							{
								x: contours[0].nodes[0].expandedTo[1].x
								y: contours[1].nodes[0].expandedTo[0].y - ( 130 / 115 ) * thickness
								dirIn: # 90 + 'deg'
									Math.min(
										Math.max(
											80 - ( 1 - thickness / 60 ) * 50,
											80
										),
										90
									) + 'deg'
								tensionIn: 1 * breakPath
							}
						]
				1:
					# x: contours[0].nodes[0].expandedTo[1].x + 55 + Math.max(
					# 	( 150 / 115 ) * thickness * width - 50,
					# 	150 * width - 50
					# ) - ( serifHeight + serifCurve ) / 2
					x: contours[0].nodes[0].expandedTo[1].x + 55 + Math.max(
						( 150 / 115 ) * thickness * width - 50,
						150 * width - 50
					)
					# The vertical serif is not yet enough convincing to be implemented
					y: xHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					tensionIn: 1 * breakPath
					expand: Object({
						width: ( 125 / 115 ) * thickness
						angle: - 94 + 'deg'
						distr: 0
					})
				2:
					expandedTo:
						[
							{
								# x: contours[1].nodes[1].x + 20 + serifHeight + serifCurve
								x: contours[1].nodes[1].x + 20
								y: contours[1].nodes[1].expandedTo[0].y
							}
							{
								x: contours[1].nodes[2].expandedTo[0].x
								y: contours[1].nodes[1].expandedTo[1].y
							}
						]
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
		# 			x: contours[1].nodes[2].expandedTo[1].x - serifHeight - serifCurve
		# 			y: contours[1].nodes[2].expandedTo[0].y
		# 		1:
		# 			x: contours[1].nodes[2].expandedTo[0].x - serifHeight - serifCurve
		# 			y: contours[1].nodes[2].expandedTo[1].y
		# 		2:
		# 			anchorLine: contours[1].nodes[2].expandedTo[0].x
		# 			right: false
		# 			baseRight: contours[1].nodes[2].expandedTo[0].point
		# 			directionY: -1
