exports.glyphs['C_cap'] =
	unicode: 'C'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + (36)
		spacingRight: 20 * spacing
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 100 ) # 40
		anglePenBottom: Math.max( - 10, - 60 * aperture * apertureBottom + 100 ) # 40
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
						width: ( 129 / 115) * thickness * opticThickness
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
						width: ( 129 / 115) * thickness * opticThickness
						angle: anglePenTop + 'deg'
						distr: 0.75
					})
