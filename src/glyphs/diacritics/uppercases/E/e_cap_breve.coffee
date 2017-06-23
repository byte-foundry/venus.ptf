exports.glyphs['e_cap_breve'] =
	unicode: 'Ĕ'
	glyphName: 'Ebreve'
	characterName: 'LATIN CAPITAL LETTER E WITH BREVE'
	base: 'E_cap'
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
					x: parentAnchors[0].x
					y: parentAnchors[0].y
