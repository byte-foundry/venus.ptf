exports.glyphs['quotedbl'] =
	unicode: '"'
	ot:
		advanceWidth: spacingLeft + minThickness + space + minThickness + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 45 * spacing + (30)
		spacingRight: 45 * spacing
		space: ( 70 / 115 ) * thickness + spacingLeft
	components:
		0:
			base: '_quotesingle'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: capHeight
		1:
			base: '_quotesingle'
			parentAnchors:
				0:
					x: spacingLeft + minThickness + space
					y: capHeight
