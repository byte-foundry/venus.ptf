exports.glyphs['G_cap'] =
	unicode: 'G'
	glyphName: 'G'
	characterName: 'LATIN CAPITAL LETTER G'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + (36)
		spacingRight: 50 * spacing + 45
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 100 ) # 40
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[3].x
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x - 130 - 100 * width
					y: ( 325 / 750 ) * capHeight * crossbar + (82)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 110 / 115) * thickness * opticThickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0.75
				1:
					typeOut: 'line'
					typeIn: 'line'
					expandedTo:
						[
							{
								x: contours[0].nodes[2].expandedTo[0].x
								y: contours[0].nodes[0].expandedTo[0].y
							}
							{
								x: contours[0].nodes[2].expandedTo[1].x
								y: contours[0].nodes[0].expandedTo[1].y
							}
						]
				# 1:
				# 	x: contours[0].nodes[2].expandedTo[1].x
				# 	y: contours[0].nodes[0].expandedTo[1].y
				# 	typeOut: 'line'
				# 	expand:
				# 		width: ( 70 / 115 ) * thickness
				# 		angle: 40 + 'deg'
				# 		distr: 0.25
				2:
					x: Math.max(
						contours[0].nodes[4].expandedTo[1].x + 480 + 200 * width - (36),
						contours[0].nodes[4].expandedTo[0].x + 0.25 * ( 145 / 115) * thickness * opticThickness * contrast + 10
					)
					y: 90 + (16)
					dirOut: - 140 + 'deg'
					typeIn: 'line'
					expand:
						width: ( 145 / 115) * thickness * opticThickness * contrast
						angle: 180 + 153 + 'deg'
						distr: 0.75
				3:
					x: contours[0].nodes[4].expandedTo[0].x + ( contours[0].nodes[6].expandedTo[0].x - contours[0].nodes[4].expandedTo[0].x ) * 0.55
					y: - overshoot
					dirOut: - 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand:
						width: ( 110 / 115) * thickness * contrast * opticThickness
						angle: 180 + 90 + 'deg'
						distr: 1
				4:
					x: spacingLeft
					y: ( 375 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand:
						width: ( 145 / 115) * thickness * opticThickness
						angle: 180 + 'deg'
						# TODO: distr is inverted boy...
						distr: 0.75
				5:
					x: contours[0].nodes[3].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand:
						width: ( 110 / 115) * thickness * contrast * opticThickness
						angle: 180 - 90 + 'deg'
						distr: 1
				6:
					x: contours[0].nodes[2].expandedTo[1].x - ( 11 / 115 ) * thickness - (21)
					y: Math.max( contours[0].nodes[1].expandedTo[1].y + ( 10 / 750 ) * capHeight, capHeight - 170 * aperture * apertureTop - 65 ) + (62)
					dirIn: Math.max(
						anglePenTop + 90 - 10 - correctWidthAperture,
						90
					) + 'deg'
					expand:
						width: ( 129 / 115) * thickness * opticThickness * contrast * contrastExtremity
						angle: anglePenTop + 'deg'
						distr: 0.75
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'top'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[6].expandedTo[1]
					baseHeight: contours[0].nodes[6].expandedTo[1]
					noneAnchor: contours[0].nodes[6].expandedTo[1]
					opposite: contours[0].nodes[6].expandedTo[0]
					curveEnd: contours[0].nodes[5].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[6].expandedTo[1]
