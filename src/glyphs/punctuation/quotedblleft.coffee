exports.glyphs['quotedblleft'] =
	unicode: '“'
	glyphName: 'quotedblleft'
	characterName: 'LEFT DOUBLE QUOTATION MARK'
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
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
		space: minThickness
	components:
		0:
			base: '_quoteleft'
			id: 'quoteleft1'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: capHeight
		1:
			base: '_quoteleft'
			id: 'quoteleft2'
			parentAnchors:
				0:
					x: spacingLeft + minThickness + space
					y: capHeight
