exports.glyphs['euro'] =
	unicode: '€'
	glyphName: 'Euro'
	characterName: 'EURO SIGN'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
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
					# x: spacingLeft + 480 + 200 * width - (61)
					x: Math.max(
						contours[0].nodes[2].expandedTo[1].x + 200 * width + 480 - (61),
						contours[0].nodes[2].expandedTo[0].x + 0.25 * ( 129 / 115) * thickness * opticThickness * contrast * contrastExtremity + 10
					)
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
					x: spacingLeft + (36)
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
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x - 50
					y: contours[0].nodes[2].y + 30
					typeOut: 'line'
					expand: Object({
						width: ( 65 / 115 ) * thickness
						angle: 82 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.2
					y: contours[0].nodes[2].y + 30
					typeOut: 'line'
					expand: Object({
						width: ( 65 / 115 ) * thickness
						angle: 82 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x - 50
					y: contours[0].nodes[2].y - 30
					typeOut: 'line'
					expand: Object({
						width: ( 65 / 115 ) * thickness
						angle: 82 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.2
					y: contours[0].nodes[2].y - 30
					typeOut: 'line'
					expand: Object({
						width: ( 65 / 115 ) * thickness
						angle: 82 + 'deg'
						distr: 1
					})
