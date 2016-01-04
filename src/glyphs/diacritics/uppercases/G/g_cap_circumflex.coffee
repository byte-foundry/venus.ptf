exports.glyphs['g_cap_circumflex'] =
	unicode: 'Ĝ'
	glyphName: "Gcircumflex"
	characterName: "LATIN CAPITAL LETTER G WITH CIRCUMFLEX"
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + (36)
		spacingRight: 45 * spacing
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 100 ) # 40
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x - 230 * width
					y: ( 325 / 750 ) * capHeight * crossbar + (82)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115) * thickness * opticThickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0.75
					})
				1:
					expandedTo:
						[
							{
								x: contours[0].nodes[2].expandedTo[0].x
								y: contours[0].nodes[0].expandedTo[0].y
								typeOut: 'line'
							}
							{
								x: contours[0].nodes[2].expandedTo[1].x
								y: contours[0].nodes[0].expandedTo[1].y
								typeIn: 'line'
							}
						]
				2:
					x: 400 + 340 * width - (36)
					y: 90 + (16)
					dirOut: - 140 + 'deg'
					expand: Object({
						width: ( 145 / 115) * thickness * opticThickness * contrast
						angle: 180 + 153 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[4].expandedTo[0].x + ( contours[0].nodes[6].expandedTo[0].x - contours[0].nodes[4].expandedTo[0].x ) * 0.55
					y: - overshoot
					dirOut: - 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 110 / 115) * thickness * contrast * opticThickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				4:
					x: spacingLeft
					y: ( 375 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 145 / 115) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[3].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115) * thickness * contrast * opticThickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				6:
					x: contours[0].nodes[2].expandedTo[1].x - ( 11 / 115 ) * thickness - (21)
					y: Math.max( contours[0].nodes[1].expandedTo[1].y + ( 10 / 750 ) * capHeight, capHeight - 170 * aperture * apertureTop - 65 ) + (62)
					dirIn: Math.max(
						anglePenTop + 90 - 10 - correctWidthAperture,
						90
					) + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 129 / 115) * thickness * opticThickness * contrast * contrastExtremity
						angle: anglePenTop + 'deg'
						distr: 0.75
					})
	components:
		0:
			base: 'circumflex'
			parentAnchors:
				0:
					# x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) / 2
					x: contours[0].nodes[3].x
					y: capHeight + diacriticHeight
