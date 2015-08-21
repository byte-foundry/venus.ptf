exports.glyphs['nine'] =
	unicode: '9'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 55 * spacing + (34)
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
					x: 555 - (25)
					y: ( 635 / 750 ) * capHeight - (16)
					dirOut: 120 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 119 / 115 ) * thickness * opticThickness
						angle: - 147 + 'deg'
						distr: 0.25
					})
