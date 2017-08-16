exports.glyphs['i_macron'] =
	unicode: 'ī'
	glyphName: 'imacron'
	characterName: 'LATIN SMALL LETTER I WITH MACRON'
	base: 'i'
	advanceWidth: base.advanceWidth
	altImg: 'full-serifs-i.svg'
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
