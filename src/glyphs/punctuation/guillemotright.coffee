exports.glyphs['guillemotright'] =
	unicode: '»'
	glyphName: 'guillemotright'
	characterName: 'RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK'
	ot:
		advanceWidth: spacingLeft + 140 * width + ( 100 / 115 ) * thickness + space + 140 * width + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 45 * spacing + (32)
		spacingRight: 45 * spacing
		space: ( 45 / 115 ) * thickness
	components:
		0:
			base: '_guilsinglright'
			parentAnchors:
				0:
					x: spacingLeft
					y: ( 260 / 520 ) * xHeight
		1:
			base: '_guilsinglright'
			parentAnchors:
				0:
					x: spacingLeft + 140 * width + space
					y: ( 260 / 520 ) * xHeight
