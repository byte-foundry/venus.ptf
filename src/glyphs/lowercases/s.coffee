exports.glyphs['s'] =
	unicode: 's'
	glyphName: 's'
	characterName: 'LATIN SMALL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 30
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 84 ) # 24
		anglePenBottom: Math.max( - 10, - 60 * aperture * apertureBottom + 81 ) # 21
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[5].x
			y: xHeight + diacriticHeight
		1:
			x: contours[0].nodes[1].x
			y: contours[0].nodes[1].expandedTo[1].y + ( contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[1].expandedTo[1].y ) * 0.4
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (23)
					y: Math.min( contours[0].nodes[3].y - ( 40 / 520 ) * xHeight, 150 * aperture * apertureBottom - 20 ) + (10) # 130
					dirOut: Math.max(
						anglePenBottom + 90 - correctWidthAperture,
						90
					) + 'deg'
					tensionOut: Math.min( correctTensionAperture, aperture * apertureBottom )
					expand: Object({
						width: ( 112 / 115 ) * thickness * contrast * contrastExtremity
						angle: anglePenBottom + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.52
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 90 / 115 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					# x: 275 + 200 * width - (29)
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 245 - (29),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: Math.max( 140, ( 140 / 520 ) * xHeight )
					dirIn: - 90 + 'deg'
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness
						angle: 180 + 5 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x + ( contours[0].nodes[5].x - contours[0].nodes[1].x ) * 0.46
					y: ( 260 / 520 ) * xHeight
					dirOut: Math.min(
						Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[4].expandedTo[0].point ) + Math.PI / 6,
						Math.PI + Math.PI / 60 / width
					)
					tensionIn: 1.1
					tensionOut: 1.1
					type: 'smooth'
					expand: Object({
						width: ( 106 / 115 ) * thickness # + ( 20 / 520 ) * xHeight - 20 # dirty hack to fit xHeight optical deformation
						angle: 180 + 75 + 'deg'
						distr: 0.5
					})
				4:
					x: contours[0].nodes[0].x + (33)
					y: xHeight - Math.max( 140, ( 140 / 520 ) * xHeight )
					dirIn: - 90 + 'deg'
					dirOut: 90 + 'deg'
					expand: Object({
						width: ( 110 / 115 ) * thickness
						angle: 180 + 5 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[6].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * 0.5
					y: xHeight + overshoot / 2
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 85 / 115 ) * thickness * contrast
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				6:
					# x: 261 + 200 * width - (24)
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 230 - (24),
						contours[0].nodes[4].expandedTo[0].x + Math.cos( anglePenTop / 180 * Math.PI ) * 0.75 * ( 103 / 115 ) * thickness * contrast * contrastExtremity + 10
					)
					y: Math.max( contours[0].nodes[3].y + ( 40 / 520 ) * xHeight, xHeight - 152 * aperture * apertureTop ) + (9)
					dirIn: Math.max(
						anglePenTop + 90 - correctWidthAperture,
						90
					) + 'deg'
					tensionIn: Math.min( correctTensionAperture, aperture * apertureTop )
					expand: Object({
						width: ( 103 / 115 ) * thickness * contrast * contrastExtremity
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
			id: 'bottombottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					curveEnd: contours[0].nodes[1].expandedTo[0]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[0].expandedTo[0].point
					down: true
					left: true
