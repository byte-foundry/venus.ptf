exports.glyphs['quotedbl'] =
	unicode: '"'
	glyphName: 'quotedbl'
	characterName: 'QUOTATION MARK'
	ot:
		advanceWidth: spacingLeft + minThickness + space + minThickness + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 45 * spacing
		spacingRight: 45 * spacing
		space: minThickness
	components:
		0:
			base: '_quotesingle'
			parentAnchors:
				0:
					x: spacingLeft + (30) + minThickness / 2
					y: capHeight
		1:
			base: '_quotesingle'
			parentAnchors:
				0:
					x: spacingLeft + (30) + minThickness + space
					y: capHeight
