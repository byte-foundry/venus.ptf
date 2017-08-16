exports.glyphs['g_dot_accent'] =
	unicode: 'ġ'
	glyphName: 'gdotaccent'
	characterName: 'LATIN SMALL LETTER G WITH DOT ABOVE'
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
			base: 'dot_accent'
			id: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
