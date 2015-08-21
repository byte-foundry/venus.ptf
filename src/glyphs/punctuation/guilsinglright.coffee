exports.glyphs['guilsinglright'] =
	unicode: '›'
	ot:
		advanceWidth: spacingLeft + minThickness + space + minThickness + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + (25)
		spacingRight: 50 * spacing
	components:
		0:
			base: '_guilsinglright'
			parentAnchors:
				0:
					x: spacingLeft
					y: ( 260 / 520 ) * xHeight
