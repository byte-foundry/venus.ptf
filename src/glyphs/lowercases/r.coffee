exports.glyphs['r'] =
	unicode: 'r'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 70 * spacing + (69)
		spacingRight: 20 * spacing
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
					y: 0
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
			closed: false
			nodes:
				0:
					expandedTo:
						[
							{
								x: contours[0].nodes[0].expandedTo[1].x
								y: xHeight - Math.max(
										105 + ( 1 - thickness / 60 ) * 150,
										105
									)
								dirOut: # 56 + 'deg'
									Math.max(
										Math.min(
											# 60 is the breakpoint where thickness takes effect
											# 50 is the velocity
											# 80 is the max dirOut
											80 + ( 1 - thickness / 60 ) * 50,
											80 # dirOut must not be over 80 deg
										),
										82 # dirOut must not be under 56 deg
									) + 'deg'
								tensionOut: 1 * breakPath
							}
							{
								x: contours[0].nodes[0].expandedTo[1].x
								y: contours[1].nodes[0].expandedTo[0].y - ( 130 / 115 ) * thickness
								dirIn: # 90 + 'deg'
									Math.min(
										Math.max(
											80 - ( 1 - thickness / 60 ) * 50,
											80
										),
										90
									) + 'deg'
								tensionIn: 1 * breakPath
							}
						]
				1:
					x: 230 * width + Math.max(
						( 100 / 115 ) * thickness,
						100
					)
					y: xHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					tensionIn: 1 * breakPath
					expand: Object({
						width: ( 125 / 115 ) * thickness
						angle: - 94 + 'deg'
						distr: 0
					})
				2:
					expandedTo:
						[
							{
								x: contours[1].nodes[1].x + 20
								y: contours[1].nodes[1].expandedTo[0].y
							}
							{
								x: contours[1].nodes[2].expandedTo[0].x
								y: contours[1].nodes[1].expandedTo[1].y
							}
						]
