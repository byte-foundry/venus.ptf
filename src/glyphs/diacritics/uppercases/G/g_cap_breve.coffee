exports.glyphs['g_cap_breve'] =
	unicode: 'Ğ'
	glyphName: 'Gbreve'
	characterName: 'LATIN CAPITAL LETTER G WITH BREVE'
	base: 'G_cap'
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
