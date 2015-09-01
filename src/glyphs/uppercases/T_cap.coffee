exports.glyphs['T_cap'] =
	unicode: 'T'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	parameters:
		spacingLeft: 10 * spacing
		spacingRight: 10 * spacing
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
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: 300 + 285 * width
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				0:
					x: contours[1].nodes[1].x
					y: 0 + serifHeight + serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].y
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].y
				2:
					anchorLine: 0
		1:
			base: 'serif-v'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - serifHeight - serifCurve
					y: contours[0].nodes[1].expandedTo[0].y
				1:
					x: contours[0].nodes[1].expandedTo[1].x - serifHeight - serifCurve
					y: contours[0].nodes[1].expandedTo[1].y
				2:
					anchorLine: contours[0].nodes[1].expandedTo[0].x
					right: false
					# leftWidth: 60
					# leftCurve: 1.2
					baseRight: contours[0].nodes[1].expandedTo[0].point
			# parentParameters:
			# 	serifMedian: serifMedian * 0.75
			# 	midWidth: midWidth * 0.98
			# transformOrigin: Array( contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[0].expandedTo[0].y )
			# transforms: Array( [ 'skewX', serifRotate * (-4) + 'deg' ] )
		2:
			base: 'serif-v'
			parentAnchors:
				1:
					x: contours[0].nodes[0].expandedTo[1].x + serifHeight + serifCurve
					y: contours[0].nodes[0].expandedTo[1].y
				0:
					x: contours[0].nodes[0].expandedTo[1].x + serifHeight + serifCurve
					y: contours[0].nodes[0].expandedTo[0].y
				2:
					anchorLine: contours[0].nodes[0].expandedTo[0].x
					directionX: -1
					right: false
					# leftWidth: 60
					# leftCurve: 1.2
					baseRight: contours[0].nodes[0].expandedTo[0].point
			# parentParameters:
			# 	serifMedian: serifMedian * 0.75
			# 	midWidth: midWidth * 0.98
			# transformOrigin: Array( contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[0].expandedTo[0].y )
			# transforms: Array( [ 'skewX', serifRotate * (-4) + 'deg' ] )
