exports.glyphs['j'] =
	unicode: 'j'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 70 + (57)
		spacingRight: 70
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
					# x: contours[0].nodes[2].expandedTo[0].x - 85
					x: - 15
					y: ( 75 / 250 ) * descender
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 95 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x - 50
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: ( 100 / 115 ) * thickness
						angle: - 72 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[3].x
					y: 0
					dirOut: - 90 + 'deg'
					tensionIn: 1.3
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				3:
					x: spacingLeft * width
					y: xHeight
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: 'title'
			parentAnchors:
				0:
					x: contours[0].nodes[3].expandedTo[0].x + thickness / 2
					y: Math.max(
						ascenderHeight - ( 125 / 115 ) * thickness,
						xHeight + 50
					)
