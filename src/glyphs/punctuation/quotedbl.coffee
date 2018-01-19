exports.glyphs['quotedbl'] =
	unicode: '"'
	glyphName: 'quotedbl'
	characterName: 'QUOTATION MARK'
	ot:
		advanceWidth: spacingLeft + minThickness + space + minThickness + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 45
		space: minThickness
	components:
		0:
			base: '_quotesingle'
			id: 'quotesingle1'
			parentAnchors:
				0:
					x: spacingLeft + (30) + minThickness / 2
					y: capHeight
		1:
			base: '_quotesingle'
			id: 'quotesingle2'
			parentAnchors:
				0:
					x: spacingLeft + (30) + minThickness + space
					y: capHeight
