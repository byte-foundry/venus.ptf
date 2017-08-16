exports.glyphs['c_alt_cedilla'] =
	unicode: 'ç'
	glyphName: 'ccedilla'
	characterName: 'LATIN SMALL LETTER C WITH CEDILLA'
	base: 'c_alt'
	advanceWidth: base.advanceWidth
	altImg: 'ball-c.svg'
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'cedilla'
			id: 'cedilla'
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
