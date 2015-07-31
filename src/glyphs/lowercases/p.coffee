exports.glyphs['p'] =
	unicode: 'p'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 70 + (29)
		spacingRight: 50
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
					x: spacingLeft
					y: ( 155 / 250 ) * descender
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( 260 / 520 ) * xHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.15
					tensionIn: 1.15
					expand: Object({
						width: ( 49 / 2 / 115 ) * thickness + ( 49 / 2 / 115 ) * thickness * contrast
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].expandedTo[1].x ) *
						Math.max(
							Math.min(
								( 65 / 115 * thickness ) / 100, 	# position is defined by thickness
								0.75 ), 							# max value between 2 points
							0.5 									# min value
						)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 102 * (1/5) / 115 ) * thickness + ( 102 * (4/5) / 115 ) * thickness * contrast
						angle: - 112 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 240 * width + (94)
					y: contours[1].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 125 / 115 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 102 * (1/5) / 115 ) * thickness + ( 102 * (4/5) / 115 ) * thickness * contrast
						angle: 112 + 'deg'
						distr: 0
					})
