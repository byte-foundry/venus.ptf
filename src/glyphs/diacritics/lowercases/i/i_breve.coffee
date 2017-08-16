exports.glyphs['i_breve'] =
	unicode: 'ĭ'
	glyphName: 'ibreve'
	characterName: 'LATIN SMALL LETTER I WITH BREVE'
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
			base: 'breve'
			id: 'breve'
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
