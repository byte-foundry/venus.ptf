exports.glyphs['e_dot_accent'] =
	unicode: 'ė'
	glyphName: 'edotaccent'
	characterName: 'LATIN SMALL LETTER E WITH DOT ABOVE'
	base: 'e'
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
					x: parentAnchors[0].x
					y: parentAnchors[0].y
