exports.glyphs['guilsinglright'] =
	unicode: '›'
	glyphName: "guilsinglright"
	characterName: "SINGLE RIGHT-POINTING ANGLE QUOTATION MARK"
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
