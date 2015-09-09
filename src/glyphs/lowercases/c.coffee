exports.glyphs['c'] =
	unicode: 'c'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + (31)
		spacingRight: 30 * spacing
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
					x: spacingLeft + 200 + 270 * width - (56)
					y: Math.min( contours[0].nodes[2].y - ( 30 / 520 ) * xHeight, 150 * aperture - 10 ) + (12) # 140
					dirOut: contours[0].nodes[0].expand.angle + Math.PI / 2 + (Math.PI / 32)
					expand: Object({
						width: ( 112 / 115) * thickness
						# angle: - 26 + 'deg'
						angle: - Math.max( - 10, - 60 * aperture + 86 ) + 'deg' # 26 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
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
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: ( 90 / 115) * thickness * contrast
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				# 4:
				# 	x: contours[0].nodes[0].x
				# 	y: xHeight - 190 + (12)
				# 	dirIn: 110 + 'deg'
				# 	expand: Object({
				# 		width: ( 112 / 115) * thickness
				# 		angle: 26 + 'deg'
				# 		distr: 0.25
				# 	})
				4:
					x: contours[0].nodes[0].x
					y: Math.max( contours[0].nodes[2].y + ( 30 / 520 ) * xHeight, xHeight - 150 * aperture + 10 ) - (12)
					# should be:
					# dirIn: contours[0].nodes[4].expand.angle + Math.PI / 2
					# but there is an issue in dependencies tree
					dirIn: Math.max( - 10, - 60 * aperture + 86 ) + 90 + 'deg'
					expand: Object({
						width: ( 112 / 115) * thickness
						angle: Math.max( - 10, - 60 * aperture + 86 ) + 'deg' # 26
						distr: 0.75
					})
