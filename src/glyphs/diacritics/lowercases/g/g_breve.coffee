exports.glyphs['g_breve'] =
	unicode: 'ğ'
	glyphName: 'gbreve'
	characterName: 'LATIN SMALL LETTER G WITH BREVE'
	base: 'g'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'breve'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
