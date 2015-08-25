exports.glyphs['U_cap'] =
	unicode: 'U'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 80 * spacing + (75)
		spacingRight: 80 * spacing
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
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ( 295 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: ( 137 / 115 ) * thickness * opticThickness
						angle: 10 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) / 2
					y:  - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand: Object({
						width: ( 125 / 115 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: 300 + 260 * width + (66)
					y: ( 295 / 750 ) * capHeight
					dirIn: - 90 + 'deg'
					typeOut: 'line'
					tensionIn: 1.1
					expand: Object({
						width: ( 137 / 115 ) * thickness * opticThickness
						angle: 180 - 10 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[3].x
					y: capHeight
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})