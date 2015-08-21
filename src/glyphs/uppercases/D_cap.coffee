exports.glyphs['D_cap'] =
	unicode: 'D'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 85 * spacing + (79)
		spacingRight: 55 * spacing
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[1].nodes[2].expandedTo[1].x - 245,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness
						angle: - 87 + 'deg'
						distr: 0
					})
				2:
					x: 300 + 265 * width + (105)
					y: ( 375 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.13
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: Math.max(
						contours[1].nodes[2].expandedTo[1].x - 215,
						contours[0].nodes[0].expandedTo[1].x
					)
					y: 0
					dirIn: 0 + 'deg'
					typeOut: 'line'
					tensionIn: 1.13
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness
						angle: 95 + 'deg'
						distr: 0
					})
				4:
					expandedTo:
						[
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: contours[1].nodes[3].expandedTo[0].y
								typeOut: 'line'
							}
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: contours[1].nodes[3].expandedTo[1].y
								typeIn: 'line'
							}
						]
