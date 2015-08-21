exports.glyphs['quoteright'] =
	unicode: '’'
	ot:
		advanceWidth: spacingLeft + minThickness + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing
		spacingRight: 50 * spacing
	components:
		0:
			base: '_quoteright'
			parentAnchors:
				0:
					x: spacingLeft + minThickness / 2
					y: capHeight
