exports.glyphs['two'] =
	unicode: '2'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 40 * spacing + (63)
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[1].x + 15
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.4
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					# x: 235 + (0)
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].expandedTo[0].x ) * 0.455
					y: ( 310 / 750 ) * capHeight - (6)
					dirOut: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[2].expandedTo[1].point ) - Math.PI / 80
					type: 'smooth'
					tensionIn: 1.2
					expand: Object({
						width: ( 162 / 115 ) * thickness * opticThickness
						angle: - 9 + 'deg'
						distr: 0.25
					})
				2:
					x: 300 + 250 * width - (34)
					y: ( 520 / 750 ) * capHeight + (2)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: - 4 + 'deg'
						distr: 0.75
					})
				3:
					x: 295
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				4:
					x: 45 + (32)
					y: ( 535 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.75
					})
				5:
					x: 90 + (30)
					y: ( 385 / 750 ) * capHeight + (15)
					dirIn: 128 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 134 / 115 ) * thickness * opticThickness
						angle: 180 + 27 + 'deg'
						distr: 0.75
					})
