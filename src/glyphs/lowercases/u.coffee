exports.glyphs['u'] =
	unicode: 'u'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 65 * spacing + (63)
		spacingRight: 70 * spacing
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
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 200
					dirOut: 90 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.3
					expand: Object({
						width: ( 110 / 115 ) * thickness
						angle: 71 + 'deg'
						distr: 0
					})
				3:
					expandedTo:
						[
							{
								x: contours[1].nodes[0].expandedTo[0].x
								y: contours[0].nodes[3].expandedTo[1].y - ( 140 / 115 ) * thickness
								y: Math.max(
										70 + ( 1 - thickness / 60 ) * 80,
										70
									)
								dirIn:
									Math.max(
										Math.min(
											# 60 is the breakpoint where thickness takes effect
											# 50 is the velocity
											# 80 is the max dirOut
											80 + ( 1 - thickness / 60 ) * 50,
											80 # dirOut must not be over 80 deg
										),
										57 # dirOut must not be under 56 deg
									) + 'deg'
							}
							{
								x: contours[1].nodes[0].expandedTo[0].x
								y: contours[0].nodes[3].expandedTo[0].y + ( 140 / 115 ) * thickness
								dirOut:
									Math.min(
										Math.max(
											80 - ( 1 - thickness / 60 ) * 50,
											80
										),
										90
									) + 'deg'
							}

						]
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 300 * width - (29)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].x
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
