exports.glyphs['g'] =
	unicode: 'g'
	glyphName: 'g'
	characterName: 'LATIN SMALL LETTER G'
	ot:
		advanceWidth: contours[1].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + (31)
		spacingRight: 70 * spacing
		anglePenBottom: Math.min( 10, 100 * aperture * apertureBottom - 100 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft
					y: ( 260 / 520 ) * xHeight
					dirOut: 90 + 'deg'
					tensionOut: 1.2
					tensionIn: 1.2
					expand: Object({
						width: ( 125 / 115) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[3].x
					y: 0
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 102 * (1/5) / 115 ) * thickness + ( 102 * (4/5) / 115 ) * thickness * contrast
						width: ( 102 / 115 ) * thickness * contrast
						angle: 68 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x + 30 + 200 * width,
						205 + 200 * width
					) + (38)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 115 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.45
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 102 * (1/5) / 115 ) * thickness + ( 102 * (4/5) / 115 ) * thickness * contrast
						width: ( 102 / 115 ) * thickness * contrast
						angle: - 68 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: Math.min(
						( ( 200 / 250 ) * descender + (45) + ( ( 95 / 115 ) * thickness * contrast ) * .5 ) + 60 + 150 * aperture * apertureBottom - 150,
						- overshoot + 15 * aperture * apertureBottom - 15
					)
					dirOut: - Math.min( 10, 60 * aperture - 60 ) - 90 + 'deg'
					# dirOut: Math.min(
					# 	# anglePenBottom - 90 + 20 - correctWidthAperture,
					# 	anglePenBottom + 60 * aperture * apertureBottom - 60,
					# 	10
					# ) + 'deg'
					tensionOut: Math.min( correctTensionAperture, 1.2 * aperture * apertureBottom )
					expand: Object({
						width: ( (105 + Math.min( 20, 20 * aperture * apertureBottom )) / 115 ) * thickness * contrast * contrastExtremity
						angle: - anglePenBottom + 'deg' # 0
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].expandedTo[1].x ) * 0.55
					y: Math.min(
						( 200 / 250 ) * descender + (45),
						- overshoot - ( 95 / 115 ) * thickness * contrast * .5
					)
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: ( 95 / 115 ) * thickness * contrast
						angle: 180 - 84 + 'deg'
						distr: 0.5
					})
				2:
					x: contours[0].nodes[2].expandedTo[1].x
					y: Math.min(
						( 200 / 250 ) * descender + (45),
						- overshoot + ( 95 / 115 ) * thickness * contrast * .5
					) + 155
					dirOut: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 125 / 115 ) * thickness
						angle: 180 + 23 + 'deg'
						distr: 1
					})
				3:
					x: contours[1].nodes[2].x
					y: xHeight - serifHeight - serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 1
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].y
				1:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[1].nodes[3].y
				2:
					anchorLine: xHeight
					directionY: -1
					left: false
