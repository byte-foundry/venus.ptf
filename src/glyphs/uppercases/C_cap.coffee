exports.glyphs['C_cap'] =
	unicode: 'C'
	glyphName: 'C'
	characterName: 'LATIN CAPITAL LETTER C'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + (36)
		spacingRight: 50 * spacing + 20
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 100 ) # 40
		anglePenBottom: Math.max( - 10, - 60 * aperture * apertureBottom + 100 ) # 40
	anchors:
		0:
			x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) / 2
			y: capHeight + diacriticHeight
			baseSerifTop: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[0].expandedTo[1], serifHeight + Math.min( 180, serifCurve * ( 180 / 15 ) ), true )
			baseSerifBottom: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight + Math.min( 130, serifCurve * ( 130 / 15 ) ) )
			baseSerifTop_: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[3].expandedTo[1], serifHeight + Math.min( 150, serifCurve * ( 150 / 15 ) ) )
			baseSerifBottom_: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], serifHeight + Math.min( 130, serifCurve * ( 130 / 15 ) ), true )
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
					x: spacingLeft + 400 + 280 * width - (61)
					y: Math.min( contours[0].nodes[2].y - ( 50 / 750 ) * capHeight, 150 * aperture * apertureBottom + 85 ) - (62) # 235
					dirOut: Math.min(
						- anglePenBottom + 90 + 16 + correctWidthAperture,
						90
					) + 'deg'
					expand: Object({
						width: ( 129 / 115) * thickness * opticThickness * contrast * contrastExtremity
						angle: - anglePenBottom + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: - 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115) * thickness * contrast * opticThickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				2:
					x: spacingLeft
					y: ( 375 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 0.9
					tensionOut: 0.9
					expand: Object({
						width: ( 145 / 115) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115) * thickness * contrast * opticThickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				4:
					x: contours[0].nodes[0].x
					y: Math.max( contours[0].nodes[2].y + ( 50 / 750 ) * capHeight, capHeight - 170 * aperture * apertureTop - 65 ) + (62)
					dirIn: Math.max(
						anglePenTop + 90 - 10 - correctWidthAperture,
						90
					) + 'deg'
					expand: Object({
						width: ( 129 / 115) * thickness * opticThickness * contrast * contrastExtremity
						angle: anglePenTop + 'deg'
						distr: 0.75
					})
	# components:
	# 	0:
	# 		base: 'serif-c'
	# 		parentAnchors:
	# 			0:
	# 				x: anchors[0].baseSerifTop_.x
	# 				y: anchors[0].baseSerifTop_.y
	# 			1:
	# 				x: anchors[0].baseSerifBottom_.x
	# 				y: anchors[0].baseSerifBottom_.y
	# 			2:
	# 				# left: false
	# 				baseRight: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[3].expandedTo[1], 1, false, 1 )
	# 				baseLeft: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], 1, true, 1 )
	# 				angleTop: anchors[0].baseSerifBottom_.normal
	# 				angleBottom: anchors[0].baseSerifTop_.normal
	# 				maxWidthBottom: - 50
	# 				rightWidth: 20
	# 				leftWidth: 54
	# 				serifMedianRight: 5
	# 				serifMedianLeft: 8
	# 				oncurveSerifTopHeight: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[3].expandedTo[1], serifHeight, false, 100 )
	# 				oncurveSerifBottomHeight: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], serifHeight, true, 100 )
	# 				topAngle: contours[0].nodes[4].expandedTo[0].dirIn
	# 				bottomAngle: contours[0].nodes[4].expandedTo[1].dirOut
	# 	1:
	# 		base: 'serif-c'
	# 		parentAnchors:
	# 			0:
	# 				x: anchors[0].baseSerifBottom.x
	# 				y: anchors[0].baseSerifBottom.y
	# 			1:
	# 				x: anchors[0].baseSerifTop.x
	# 				y: anchors[0].baseSerifTop.y
	# 			2:
	# 				# right: false
	# 				anchorLine: contours[0].nodes[0].expandedTo[0].x
	# 				rightWidth: 50
	# 				leftWidth: 20
	# 				angleBottom: anchors[0].baseSerifBottom.normal
	# 				angleTop: anchors[0].baseSerifTop.normal
	# 				maxWidthTop: capHeight
	# 				serifMedianRight: 5
	# 				serifMedianLeft: 5
	# 				baseRight: contours[0].nodes[0].expandedTo[0].point
	# 				baseLeft: contours[0].nodes[0].expandedTo[1].point
	# 				oncurveSerifTopHeight: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight, true, 100 )
	# 				oncurveSerifBottomHeight: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1], serifHeight, false, 100 )
	# 				topAngle: contours[0].nodes[0].expandedTo[1].dirIn
	# 				bottomAngle: contours[0].nodes[0].expandedTo[0].dirOut
	# 				serifTransformOrigin: Array( contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[0].expandedTo[0].y )
	# 				serifTransform: serifRotate * ( -15 )
	# 		transformOrigin: Array( contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[0].expandedTo[0].y )
	# 		transforms: Array(
	# 			[ 'skewX', serifRotate * (-15) + 'deg' ]
	# 		)
