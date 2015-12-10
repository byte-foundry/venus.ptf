exports.glyphs['e'] =
	unicode: 'e'
	glyphName: "e"
	characterName: "LATIN SMALL LETTER E"
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + (31)
		spacingRight: 30 * spacing
		anglePenBottom: Math.max( - 10, - 60 * aperture * apertureBottom + 81 ) # 21
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: spacingLeft + ( 240 * width + 188 - 50 ) - (9)
					x: contours[0].nodes[2].expandedTo[0].x + 250 * width + 100 - (31)
					x: Math.max(contours[0].nodes[2].expandedTo[0].x, 175 * width ) + 250 * width + 100 - (31)
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
					# x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
						# Math.max(
						# 	Math.min(
						# 		( 50 / 115 * thickness ) / 100, 	# position is defined by thickness
						# 		0.75 ), 							# max value between 2 points
						# 	0.45 									# min value
						# )
					y: - overshoot
					dirOut: - 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 95 / 115) * thickness * contrast
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				2:
					x: spacingLeft
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
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * 0.5
					# x: contours[0].nodes[4].expandedTo[1].x
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
					x: contours[0].nodes[0].expandedTo[1].x - ( 70 / 115 ) * thickness
					y: ( 250 / 520 ) * xHeight * crossbar
					dirIn: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				5:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 80 / 115 ) * thickness * contrast
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				6:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirIn: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: contours[0].nodes[5].expand.width * contrastExtremity
						angle: 180 + 90 + 'deg'
						distr: 1
					})
