exports.glyphs['a_breve'] =
	unicode: 'ă'
	glyphName: 'abreve'
	characterName: 'LATIN SMALL LETTER A WITH BREVE'
	altImg: 'double-story-a.svg'
	ot:
		advanceWidth: contours[0].nodes[4].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 30
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 78 ) # 18
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
					x: spacingLeft + 15 + (26)
					y: Math.max( contours[0].nodes[2].expandedTo[0].y - ( 30 / 520 ) * xHeight, xHeight - 130 * aperture * apertureTop ) - (8)
					# dirOut: - Math.max( - 10, - 60 * aperture + 78 ) + 90 + 'deg'
					dirOut: Math.min(
						- anglePenTop + 90 + correctWidthAperture,
						90
					) + 'deg'
					expand: Object({
						width: ( 110 / 115 ) * thickness  * contrast * contrastExtremity
						angle: - anglePenTop + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					type: 'smooth'
					expand: Object({
						width: Math.min(
							( 95 / 115 ) * thickness * contrast,
							xHeight - contours[1].nodes[4].expandedTo[0].y - 10
						)
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[3].x
					y: ( 380 / 520 ) * xHeight - (32) - ( 30 / 115 ) * thickness + 30
					dirIn: 90 + 'deg'
					tensionIn: 1.2
					typeOut: 'line'
					expand: Object({
						width: ( 125 / 115 ) * thickness
						angle: 180 - 23 + 'deg'
						distr: 0.25
					})
				3:
					# x: 275 + 200 * width - (29)
					x: (contours[1].nodes[2].x - 0.25 * thickness) + 200 * width + 235 - (29)
					y: Math.max(
						45,
						( 85 / 115 ) * thickness +
							( Math.min(
								25,
								25 * width
							) / 115 ) * thickness
					)
					dirOut: - 90 + 'deg'
					tensionOut: 1.6
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[3].expandedTo[0].x + 45 # + ( 50 + ( Math.min( 25, 25 * width ) / 115 ) * thickness )
					y: 0
					dirIn: 180 + 'deg'
					tensionIn: 1.6
					expand: Object({
						width: ( 85 / 115 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x + ( 1 / 115 ) * thickness
					y: 150 + ( 55 / 115 ) * thickness
					dirOut: - 90 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: Math.max(
							( 35 / 115 ) * thickness * contrast * contrastExtremity,
							4
						)
						angle: 180 + 'deg'
						distr: 1
					})
				1:
					# x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[4].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * 0.22 + 5
					x: contours[0].nodes[1].expandedTo[1].x - Math.min(( 65 / 115 ) * thickness, 65 )
					y:  - overshoot
					type: 'smooth'
					dirIn: 0 + 'deg'
					tensionOut: 1.2
					expand: Object({
						width: ( 87 / 115 ) * thickness * contrast
						angle: 66 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (29)
					y: contours[1].nodes[1].expandedTo[1].y + ( contours[1].nodes[4].expandedTo[1].y - contours[1].nodes[1].expandedTo[1].y ) * 0.25
					type: 'smooth'
					dirOut: 90 + 'deg'
					# tensionOut: 1.1
					expand: Object({
						width: thickness
						angle: 2 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].x + ( contours[1].nodes[4].x - contours[1].nodes[2].x ) / 2
					y: contours[1].nodes[2].y + ( contours[1].nodes[4].y - contours[1].nodes[2].y ) / 2
					dirOut: Math.max(
						Utils.lineAngle( contours[1].nodes[2].expandedTo[1].point, contours[1].nodes[4].expandedTo[1].point ) * contrast - Math.PI / 6,
						0
					)
					type: 'smooth'
					expand: Object({
						width: ( 100 / 115 ) * thickness * contrast
						angle: - 47 + 'deg'
						distr: 0.3
					})
				4:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y * crossbar
					dirIn: 90 + 'deg'
					tensionIn: 1.3
					expand: Object({
						width: ( 125 / 115 ) * thickness / 2 * contrast
						angle: - 23 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'breve'
			parentAnchors:
				0:
					x: contours[0].nodes[1].x
					y: xHeight + diacriticHeight
