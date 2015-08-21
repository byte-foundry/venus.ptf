exports.glyphs['n'] =
	unicode: 'n'
	ot:
		advanceWidth: contours[1].nodes[3].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 70 * spacing + (69)
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
										75 + ( 1 - thickness / 60 ) * 150,
										75
									)
								dirOut: # 56 + 'deg'
									Math.max(
										Math.min(
											80 + ( 1 - thickness / 60 ) * 50,
											80 # dirOut must not be over 80 deg
										),
										56 # dirOut must not be under 56 deg
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
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
					y: xHeight + overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1 * breakPath
					expand: Object({
						width: ( 113 / 115 ) * thickness
						angle: - 113 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 185 * width + (172)
					y: xHeight - 205
					dirOut: 0 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					tensionIn: 1.1
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: - 0.5
					})
				3:
					x: contours[1].nodes[2].x
					y: 0
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: - 0.5
					})
