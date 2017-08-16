exports.glyphs['quoteleft'] =
	unicode: '‘'
	glyphName: 'quoteleft'
	characterName: 'LEFT SINGLE QUOTATION MARK'
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
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
	components:
		0:
			base: '_quoteleft'
			id: 'quoteleft'
			parentAnchors:
				0:
					x: spacingLeft
					y: capHeight
