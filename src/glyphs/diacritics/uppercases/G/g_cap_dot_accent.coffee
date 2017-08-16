exports.glyphs['g_cap_dot_accent'] =
	unicode: 'Ġ'
	glyphName: 'Gdotaccent'
	characterName: 'LATIN CAPITAL LETTER G WITH DOT ABOVE'
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
			base: 'dot_accent'
			id: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
