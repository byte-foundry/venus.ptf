exports.glyphs['guilsinglleft'] =
	unicode: '‹'
	glyphName: 'guilsinglleft'
	characterName: 'SINGLE LEFT-POINTING ANGLE QUOTATION MARK'
	ot:
		advanceWidth: spacingLeft + (140 * width) + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
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
			base: '_guilsinglleft'
			parentAnchors:
				0:
					x: spacingLeft
					y: ( 260 / 520 ) * xHeight
