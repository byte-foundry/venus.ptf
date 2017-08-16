exports.glyphs['a_alt_macron'] =
	unicode: 'ā'
	glyphName: 'amacron'
	characterName: 'LATIN SMALL LETTER A WITH MACRON'
	base: 'a_alt'
	advanceWidth: base.advanceWidth
	altImg: 'single-story-a.svg'
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
					x: parentAnchors[2].x
					y: parentAnchors[2].y
