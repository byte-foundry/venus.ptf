exports.glyphs['a_alt_breve'] =
	unicode: 'ă'
	glyphName: 'abreve'
	characterName: 'LATIN SMALL LETTER A WITH BREVE'
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
			base: 'breve'
			id: 'breve'
			parentAnchors:
				0:
					x: parentAnchors[2].x
					y: parentAnchors[2].y
