exports.glyphs['guillemotleft'] =
	unicode: '«'
	glyphName: 'guillemotleft'
	characterName: 'LEFT-POINTING DOUBLE ANGLE QUOTATION MARK'
	ot:
		advanceWidth: spacingLeft + 140 * width + ( 100 / 115 ) * thickness + space + 140 * width + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 45 + (50)
		spacingRight: 50 * spacing + 45
		space: ( 45 / 115 ) * thickness
	components:
		0:
			base: '_guilsinglleft'
			id: 'guilsinglleft1'
			parentAnchors:
				0:
					x: spacingLeft
					y: ( 260 / 520 ) * xHeight
		1:
			base: '_guilsinglleft'
			id: 'guilsinglleft2'
			parentAnchors:
				0:
					x: spacingLeft + 140 * width + space
					y: ( 260 / 520 ) * xHeight
