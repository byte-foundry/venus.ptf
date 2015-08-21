exports.glyphs['colon'] =
	unicode: ":"
	ot:
		advanceWidth: spacingLeft + minThickness + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + (23)
		spacingRight: 50 * spacing
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: minThickness
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: xHeight
