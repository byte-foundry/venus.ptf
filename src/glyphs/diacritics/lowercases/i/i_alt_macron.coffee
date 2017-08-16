exports.glyphs['i_alt_macron'] =
	unicode: 'ī'
	glyphName: 'imacron'
	characterName: 'LATIN SMALL LETTER I WITH MACRON'
	base: 'i_alt'
	advanceWidth: base.advanceWidth
	altImg: 'top-serif-i.svg'
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'macron'
			id: 'macron'
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
