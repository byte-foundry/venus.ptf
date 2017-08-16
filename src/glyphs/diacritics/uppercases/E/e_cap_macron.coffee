exports.glyphs['e_cap_macron'] =
	unicode: 'Ē'
	glyphName: 'Emacron'
	characterName: 'LATIN CAPITAL LETTER E WITH MACRON'
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
			base: 'macron'
			id: 'macron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
