exports.glyphs['n_cap_acute'] =
	unicode: 'Ń'
	glyphName: 'Nacute'
	characterName: 'LATIN CAPITAL LETTER N WITH ACUTE'
	base: 'N_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'acute'
			id: 'acute'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - 100
					y: parentAnchors[0].y
