exports.glyphs['quotedblright'] =
	unicode: '”'
	glyphName: 'quotedblright'
	characterName: 'RIGHT DOUBLE QUOTATION MARK'
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
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
		space: minThickness
	components:
		0:
			base: '_quoteright'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: capHeight
		1:
			base: '_quoteright'
			parentAnchors:
				0:
					x: spacingLeft + minThickness + space
					y: capHeight
