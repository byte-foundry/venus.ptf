exports.glyphs['c_cap_dot_accent'] =
	unicode: 'Ċ'
	glyphName: 'Cdotaccent'
	characterName: 'LATIN CAPITAL LETTER C WITH DOT ABOVE'
	base: 'C_cap'
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
					x: anchors[0].x
					y: anchors[0].y
