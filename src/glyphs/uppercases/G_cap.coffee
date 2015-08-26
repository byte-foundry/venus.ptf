exports.glyphs['G_cap'] =
	unicode: 'G'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + (64)
		spacingRight: 45 * spacing
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
					x: contours[0].nodes[1].expandedTo[0].x - 230 * width
					y: ( 325 / 750 ) * capHeight + (82)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0.75
					})
				1:
					expandedTo:
						[
							{
								x: contours[0].nodes[2].expandedTo[0].x
								y: contours[0].nodes[0].expandedTo[0].y
								typeOut: 'line'
							}
							{
								x: contours[0].nodes[2].expandedTo[1].x
								y: contours[0].nodes[0].expandedTo[1].y
								typeIn: 'line'
							}
						]
				2:
					x: 400 + 340 * width - (36)
					y: 90 + (16)
					dirOut: - 140 + 'deg'
					expand: Object({
						width: ( 145 / 115) * thickness * opticThickness * contrast
						angle: 180 + 153 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[4].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[4].expandedTo[0].x ) * 0.6
					y: - overshoot
					dirOut: - 180 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					expand: Object({
						width: ( 110 / 115) * thickness * contrast * opticThickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				4:
					x: spacingLeft
					y: ( 375 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 145 / 115) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[3].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115) * thickness * contrast * opticThickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				6:
					x: contours[0].nodes[2].expandedTo[0].x + (40)
					y: capHeight - 235 + (21)
					dirIn: 118 + 'deg'
					expand: Object({
						width: ( 129 / 115) * thickness * opticThickness
						angle: 40 + 'deg'
						distr: 0.25
					})
