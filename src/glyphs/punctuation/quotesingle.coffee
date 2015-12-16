exports.glyphs['quotesingle'] =
	unicode: "'"
	glyphName: "quotesingle"
	characterName: "APOSTROPHE"
	ot:
		advanceWidth: spacingLeft + minThickness + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 45 * spacing + (30)
		spacingRight: 45 * spacing
	components:
		0:
			base: '_quotesingle'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: capHeight
