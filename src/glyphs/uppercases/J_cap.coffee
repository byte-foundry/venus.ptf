exports.glyphs['J_cap'] =
	unicode: 'J'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 45 * spacing + (59)
		spacingRight: 85 * spacing
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
					y: ( 295 / 750 ) * capHeight
					y: 295
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 137 / 115 ) * thickness * opticThickness
						angle: 10 + 'deg'
						distr: 0.25
					})
				1:
					x: spacingLeft
					y: ( 225 / 750 ) * capHeight
					y: 225
					dirOut: - 90 + 'deg'
					tensionOut: 1.15
					expand: Object({
						width: ( 140 / 115 ) * thickness * opticThickness
						angle: 16 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.15
					tensionOut: 1.1
					expand: Object({
						width: ( 125 / 115 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[4].x
					y: ( 220 / 750 ) * capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				4:
					x: 200 + 285 * width - (34)
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
