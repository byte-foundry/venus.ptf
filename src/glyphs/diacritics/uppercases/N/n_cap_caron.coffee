exports.glyphs['n_cap_caron'] =
	unicode: 'Ň'
	glyphName: 'Ncaron'
	characterName: 'LATIN CAPITAL LETTER N WITH CARON'
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
			base: 'caron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
