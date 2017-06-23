exports.glyphs['c_alt_cedilla'] =
	unicode: 'ç'
	glyphName: 'ccedilla'
	characterName: 'LATIN SMALL LETTER C WITH CEDILLA'
	altImg: 'ball-c.svg'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50 + (31)
		spacingRight: 50 * spacing + 30
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 86 ) # 26
		anglePenBottom: Math.max( - 10, - 60 * aperture * apertureBottom + 86 ) # 26
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[1].x + 200 * width + 270 - (26),
						contours[0].nodes[2].expandedTo[0].x + 0.75 * thickness + 10
					)
					y: Math.min( contours[0].nodes[2].y - ( 30 / 520 ) * xHeight, 130 * aperture * apertureBottom + 20 ) - (15) # 190 - (15)
					dirOut: Math.min(
						- anglePenBottom + 90 + 6 + correctWidthAperture,
						90
					) + 'deg'
					expand:
						width: ( 115 / 115) * thickness * contrast * contrastExtremity
						angle: - anglePenBottom + 'deg'
						distr: 0.75
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: - 180 + 'deg'
					type: 'smooth'
					expand:
						width: ( 95 / 115) * thickness * contrast
						angle: 180 + 90 + 'deg'
						distr: 1
				2:
					x: spacingLeft + (31)
					y: ( 260 / 520 ) * xHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.15
					tensionOut: 1.15
					expand:
						width: ( 125 / 115) * thickness
						angle: 180 + 'deg'
						distr: 0.75
				3:
					x: contours[0].nodes[1].x
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand:
						width: ( 90 / 115) * thickness * contrast
						angle: 180 - 90 + 'deg'
						distr: 1
				4:
					x: contours[0].nodes[0].x
					y: xHeight - 150 - (12) # 190 - (15)
					dirIn: 95 + 10 * contrast * contrastExtremity + 'deg'
					type: 'smooth'
					expand:
						width: ( 112 / 115 ) * thickness * contrast * contrastExtremity
						angle: 26 + 'deg'
						distr: 0.75 # * contrastExtremity
				5:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand:
						width: (( 112 / 115 ) * thickness) / 2 * contrastExtremity
						angle: 180 + 105 + 'deg'
						distr: 0
				6:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[5].expandedTo[1].y + ( contours[0].nodes[7].expandedTo[1].y - contours[0].nodes[5].expandedTo[1].y ) / 2
					dirIn: - 90  + 'deg'
					type: 'smooth'
					expand:
						width: (( 112 / 115 ) * thickness) / 2 * serifBall * contrastExtremity
						angle: 180 + 'deg'
						distr: 0
				7:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirIn: - 180 + 'deg'
					type: 'smooth'
					expand:
						width: Math.min(
							(( 112 / 115 ) * thickness) * serifBall * contrastExtremity,
							contours[0].nodes[3].expandedTo[0].y - contours[0].nodes[4].expandedTo[0].y
						)
						angle: 90 + 'deg'
						distr: 0
	components:
		0:
			base: 'cedilla'
			parentAnchors:
				0:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					y: contours[0].nodes[1].expandedTo[1].y + ( contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[1].expandedTo[1].y ) * 0.4
