exports.glyphs['a_cap_breve'] =
	unicode: 'Ă'
	glyphName: 'Abreve'
	characterName: 'LATIN CAPITAL LETTER A WITH BREVE'
	base: 'A_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'breve'
			id: 'breve'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
