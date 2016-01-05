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
					x: anchors[0].x
					y: anchors[0].y
