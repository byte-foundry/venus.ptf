exports.glyphs['z_cap_dot_accent'] =
	unicode: 'Ż'
	glyphName: 'Zdotaccent'
	characterName: 'LATIN CAPITAL LETTER Z WITH DOT ABOVE'
	base: 'Z_cap'
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
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
