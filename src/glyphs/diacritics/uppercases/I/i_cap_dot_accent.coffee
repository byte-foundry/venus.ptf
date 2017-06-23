exports.glyphs['i_cap_dot_accent'] =
	unicode: 'İ'
	glyphName: 'Idotaccent'
	characterName: 'LATIN CAPITAL LETTER I WITH DOT ABOVE'
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
			base: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
