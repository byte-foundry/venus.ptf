exports.glyphs['quotesingle'] =
	unicode: '\''
	glyphName: 'quotesingle'
	characterName: 'APOSTROPHE'
	ot:
		advanceWidth: spacingLeft + minThickness + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 45 + (30)
		spacingRight: 50 * spacing + 45
	components:
		0:
			base: '_quotesingle'
			id: 'quotesingle'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: capHeight
