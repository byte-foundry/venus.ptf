exports.glyphs['a_breve'] =
	unicode: 'ă'
	glyphName: 'abreve'
	characterName: 'LATIN SMALL LETTER A WITH BREVE'
	base: 'a'
	advanceWidth: base.advanceWidth
	altImg: 'double-story-a.svg'
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
