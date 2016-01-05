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
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
