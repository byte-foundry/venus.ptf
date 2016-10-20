exports.glyphs['c'] =
	unicode: 'c'
	glyphName: 'c'
	characterName: 'LATIN SMALL LETTER C'
	altImg: 'serif-less-c.svg'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 30
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 86 ) # 26
		anglePenBottom: Math.max( - 10, - 60 * aperture * apertureBottom + 86 ) # 26
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[3].expandedTo[0].x
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[1].x + 200 * width + 270 - (22),
						contours[0].nodes[2].expandedTo[0].x + 0.75 * thickness + 10
					)
					y: Math.min( contours[0].nodes[2].y - ( 30 / 520 ) * xHeight, 130 * aperture * apertureBottom + 20 ) - (15) # 190 - (15)
					dirOut: Math.min(
						- anglePenBottom + 90 + 6 + correctWidthAperture,
						90
					) + 'deg'
					expand: Object({
						width: ( 115 / 115) * thickness * contrast * contrastExtremity
						angle: - anglePenBottom + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: - 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 95 / 115) * thickness * contrast
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				2:
					x: spacingLeft + (31)
					y: ( 260 / 520 ) * xHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.15
					tensionOut: 1.15
					expand: Object({
						width: ( 125 / 115) * thickness
						angle: 180 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[1].x
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: ( 90 / 115) * thickness * contrast
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				4:
					x: contours[0].nodes[0].x
					y: Math.max(
						contours[0].nodes[2].y + ( 30 / 520 ) * xHeight,
						xHeight - 150 * aperture * apertureTop + 10
					) - (12)
					dirIn: Math.max(
						anglePenTop + 90 - correctWidthAperture,
						90
					) + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 112 / 115) * thickness * contrast * contrastExtremity
						angle: anglePenTop + 'deg'
						distr: 0.75 # * contrastExtremity
					})
	components:
		0:
			base: 'serif-curve-inside-auto'
			id: 'top'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[4].expandedTo[1]
					baseHeight: contours[0].nodes[4].expandedTo[1].point
					opposite: contours[0].nodes[4].expandedTo[0].point
					curveEnd: contours[0].nodes[3].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[4].expandedTo[1].point
		# 1:
		# 	base: 'serif-curve-inside-auto'
		# 	id: 'topbottom'
		# 	parentAnchors:
		# 		0:
		# 			base: contours[0].nodes[4].expandedTo[0]
		# 			opposite: contours[0].nodes[4].expandedTo[1].point
		# 			curveEnd: contours[0].nodes[3].expandedTo[0]
		# 			rotationAngle: -15
		# 			down: true
		# 			rotationCenter: contours[0].nodes[4].expandedTo[1].point
