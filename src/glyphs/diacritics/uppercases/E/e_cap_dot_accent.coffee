exports.glyphs['e_cap_dot_accent'] =
	unicode: 'Ė'
	glyphName: 'Edotaccent'
	characterName: 'LATIN CAPITAL LETTER E WITH DOT ABOVE'
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
			base: 'dot_accent'
			id: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
