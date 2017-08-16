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
		spacingLeft: 50 * spacing + 50 + (25)
		spacingRight: 50 * spacing + 50
	components:
		0:
			base: '_guilsinglleft'
			id: 'guilsinglleft'
			parentAnchors:
				0:
					x: spacingLeft
					y: ( 260 / 520 ) * xHeight
