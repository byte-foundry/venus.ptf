exports.glyphs['u_cap_breve'] =
	unicode: 'Ŭ'
	glyphName: 'Ubreve'
	characterName: 'LATIN CAPITAL LETTER U WITH BREVE'
	base: 'U_cap'
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
