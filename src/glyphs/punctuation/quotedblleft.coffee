exports.glyphs['quotedblleft'] =
	unicode: '“'
	glyphName: "quotedblleft"
	characterName: "LEFT DOUBLE QUOTATION MARK"
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
		spacingLeft: 50 * spacing
		spacingRight: 50 * spacing
		space: ( 65 / 115 ) * thickness + spacingLeft
	components:
		0:
			base: '_quoteleft'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: capHeight
		1:
			base: '_quoteleft'
			parentAnchors:
				0:
					x: spacingLeft + minThickness + space
					y: capHeight
