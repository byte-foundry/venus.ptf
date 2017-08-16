exports.glyphs['i_cap_macron'] =
	unicode: 'Ī'
	glyphName: 'Imacron'
	characterName: 'LATIN CAPITAL LETTER I WITH MACRON'
	base: 'I_cap'
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
