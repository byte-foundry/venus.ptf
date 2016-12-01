# TODO: angletop & bottom related to thickness
exports.glyphs['S_cap'] =
	unicode: 'S'
	glyphName: 'S'
	characterName: 'LATIN CAPITAL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 35
		anglePenTop: Math.max( - 10, - 40 * aperture * apertureTop + 82 ) # 42
		anglePenBottom: Math.max( - 10, - 60 * aperture * apertureBottom + 95 ) # 35
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[6].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (29)
					y: Math.min( contours[0].nodes[3].y - ( 60 / 750 ) * capHeight, 140 * aperture * apertureBottom + 20 ) + (20) # 160
					dirOut: Math.max(
						anglePenBottom + 90 - correctWidthAperture - (10),
						90
					) + 'deg'
					type: 'smooth'
					tensionOut: Math.min( 1.1 * correctTensionAperture, 1.1 * aperture * apertureBottom )
					expand: Object({
						width: ( 140 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: anglePenBottom + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.54
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					expand: Object({
						width: ( 118 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[4].expandedTo[0].x + 225 + 200 * width - (36)
					y: ( 210 / 750 ) * capHeight - (1)
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 180 + 2 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x + ( contours[0].nodes[5].x - contours[0].nodes[1].x ) * 0.46
					y: ( 386 / 750 ) * capHeight
					dirOut: Math.min(
						Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[4].expandedTo[0].point ) + Math.PI / 6,
						Math.PI + Math.PI / 60
					)
					tensionIn: 1.1
					tensionOut: 1.1
					type: 'smooth'
					expand: Object({
						width: ( 141 / 115 ) * thickness * opticThickness
						angle: 180 + 75 + 'deg'
						distr: 0.5
					})
				4:
					x: spacingLeft + 35
					y: ( 545 / 750 ) * capHeight + (4)
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 140 / 115 ) * thickness * opticThickness
						angle: 180 + 6 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[6].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * 0.46
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 120 / 115 ) * thickness * opticThickness * contrast
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				6:
					x: contours[0].nodes[2].expandedTo[0].x - 47
					y: Math.max( contours[0].nodes[3].y + ( 80 / 520 ) * capHeight, capHeight - 119 * aperture * apertureTop ) - (23)
					dirIn: Math.max(
						anglePenTop + 90 - correctWidthAperture,
						90
					) + 'deg'
					type: 'smooth'
					tensionIn: Math.min( 1.1 * correctTensionAperture, 1.1 * aperture * apertureTop )
					expand: Object({
						width: ( 129 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: anglePenTop + 'deg'
						distr: 0.75
					})
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'top'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[6].expandedTo[1]
					baseHeight: contours[0].nodes[6].expandedTo[1].point
					noneAnchor: contours[0].nodes[6].expandedTo[1].point
					opposite: contours[0].nodes[6].expandedTo[0].point
					curveEnd: contours[0].nodes[5].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[6].expandedTo[1].point
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					curveEnd: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					rotationAngle: -15
					rotationCenter: contours[0].nodes[0].expandedTo[0].point
					down: true
					left: true
