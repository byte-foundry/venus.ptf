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
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
