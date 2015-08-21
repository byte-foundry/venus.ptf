exports.glyphs['period'] =
	unicode: 46
	ot:
		advanceWidth: spacingLeft + minThickness + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + (29)
		spacingRight: 50 * spacing
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: minThickness
