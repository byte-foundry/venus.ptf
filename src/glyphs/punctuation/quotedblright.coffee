exports.glyphs['quotedblright'] =
	unicode: '”'
	ot:
		advanceWidth: spacingLeft + minThickness + space + minThickness + spacingRight
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
