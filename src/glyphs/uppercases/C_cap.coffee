exports.glyphs['C_cap'] =
	unicode: 'C'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 50 * spacing + (59)
		spacingRight: 20 * spacing
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
					# x: contours[0].nodes[2].expandedTo[0].x + 245 + (25)
					x: 400 + 230 * width + (25)
					y: 235 - (19)
					dirOut: - 118 + 'deg'
					expand: Object({
						width: ( 129 / 115) * thickness * opticThickness
						angle: - 40 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: - 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115) * thickness * contrast * opticThickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				2:
					x: spacingLeft
					y: ( 375 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 0.9
					tensionOut: 0.9
					expand: Object({
						width: ( 145 / 115) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115) * thickness * contrast * opticThickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				4:
					x: contours[0].nodes[0].x
					y: capHeight - 235 + (21)
					dirIn: 118 + 'deg'
					expand: Object({
						width: ( 129 / 115) * thickness * opticThickness
						angle: 40 + 'deg'
						distr: 0.25
					})
