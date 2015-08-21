exports.glyphs['i'] =
	unicode: 'i'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 70 * spacing + (97)
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
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
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
					x: contours[0].nodes[1].expandedTo[0].x + thickness / 2
					y: Math.max(
						ascenderHeight - ( 125 / 115 ) * thickness,
						xHeight + 50
					)
