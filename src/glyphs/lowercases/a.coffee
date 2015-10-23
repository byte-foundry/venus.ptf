exports.glyphs['a'] =
	unicode: 'a'
	altImg: 'double-story-a.svg'
	ot:
		advanceWidth: contours[0].nodes[5].x + spacingRight
	parameters:
		spacingLeft: 70 * spacing + (29)
		spacingRight: 30 * spacing
		anglePenTop: Math.max( - 10, - 60 * aperture * apertureTop + 78 ) # 18
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
					x: 55 + (26)
					y: Math.max( contours[0].nodes[2].expandedTo[0].y - ( 30 / 520 ) * xHeight, xHeight - 130 * aperture * apertureTop ) - (8)
					dirOut: - Math.max( - 10, - 60 * aperture + 78 ) + 90 + 'deg'
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
						width: ( 95 / 115 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					# x: 360 + (86)
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
					x: 275 + 200 * width - (29)
					y: ( 85 / 115 ) * thickness + 35
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[3].x
					y: 0
					dirOut: 0 + 'deg'
					dirIn: 180 + 'deg'
					tensionIn: 1.5
					expand: Object({
						width:
							Math.sqrt(
								Math.pow( contours[0].nodes[5].expand.width, 2 ) +
								Math.pow( contours[0].nodes[5].x - contours[0].nodes[3].x, 2 )
							)
						angle: Utils.lineAngle( contours[0].nodes[4].point, contours[0].nodes[5].expandedTo[0].point ) + Math.PI
						distr: 1
					})
				5:
					x: contours[0].nodes[4].x + ( 50 + ( Math.min( 25, 25 * width ) / 115 ) * thickness )
					y: 0
					dirIn: 180 + 'deg'
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
					y: 205
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 90 / 115 ) * thickness * contrast * contrastExtremity
						angle: 180 - 85 + 'deg'
						distr: 1
					})
				1:
					x: 195
					# x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[4].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * 0.22 + 5
					# x: contours[0].nodes[1].expandedTo[1].x - Math.min(( 65 / 115 ) * thickness, 65 )
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
					x: 40 + (29)
					y: contours[1].nodes[1].expandedTo[1].y + ( contours[1].nodes[4].expandedTo[1].y - contours[1].nodes[1].expandedTo[1].y ) * 0.3
					type: 'smooth'
					dirOut: 90 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: thickness
						angle: 2 + 'deg'
						distr: 0.25
					})
				3:
					# x: 190 + (17)
					# x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[4].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * 0.22
					x: contours[0].nodes[1].expandedTo[1].x - Math.min(( 65 / 115 ) * thickness, 65 )
					# y: 300 - (19)
					# y: contours[1].nodes[4].expandedTo[1].y + (5)
					y: contours[1].nodes[2].expandedTo[0].y + ( contours[1].nodes[4].expandedTo[0].y - contours[1].nodes[2].expandedTo[0].y ) * 0.58
					type: 'smooth'
					dirOut:
						# 11 + 'deg'
						# Utils.lineAngle( contours[1].nodes[3].expandedTo[0].point, contours[1].nodes[4].expandedTo[0].point ) - Math.PI / ( 10 / 520 ) * xHeight
						Math.max(
							Utils.lineAngle( contours[1].nodes[3].expandedTo[0].point, contours[1].nodes[4].expandedTo[0].point ) - Math.PI / 10,
							0
						)
					tensionOut: 1.1
					expand: Object({
						width: ( 102 / 115 ) * thickness
						angle: - 47 + 'deg'
						distr: 0.25
					})
				# 4:
				# 	x: contours[0].nodes[2].expandedTo[1].x
				# 	y: Math.min(
				# 		contours[0].nodes[2].expandedTo[1].y * crossbar,
				# 		contours[0].nodes[0].expandedTo[1].y + ( contours[0].nodes[1].expandedTo[1].y - contours[0].nodes[0].expandedTo[1].y ) / 2
				# 	)
				# 	dirIn: - 90 + 'deg'
				# 	tensionIn: 1.4
				# 	expand: Object({
				# 		width: ( 100 / 115 ) * thickness * contrast
				# 		angle: - 90 + 'deg'
				# 		distr: 0
				# 	})
				4:
					expandedTo:
						[
							{
								x: contours[0].nodes[2].expandedTo[1].x
								y: Math.min(
									contours[0].nodes[2].expandedTo[1].y * crossbar,
									contours[0].nodes[0].expandedTo[1].y + ( contours[0].nodes[1].expandedTo[1].y - contours[0].nodes[0].expandedTo[1].y ) / 2
								)
								dirIn: - 90 + 'deg'
								tensionIn: 1.4
							}
							{
								x: contours[0].nodes[2].expandedTo[1].x
								y: contours[1].nodes[4].expandedTo[0].y - Math.max(
									( 110 / 115 ) * thickness,
									16
								)
								# dirOut: Math.max(
								# 	- 88 - ( 47 / 115 ) * thickness + 'deg',
								# 	- 65 - ( 70 / 115 ) * thickness * width + 'deg'
								# )
								# dirOut: Math.min( - 90, - 67 - ( 68 / 115 ) * thickness * width ) + 'deg'
								dirOut: - 88 - ( 47 / 115 ) * thickness + 'deg',
								tensionOut: 2 - ( 1.4 / 520 ) * xHeight
								tensionOut: 0.6 + ( 0.1 / 115 ) * thickness - 0.1
							}
						]
