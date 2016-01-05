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
					x: anchors[0].x
					y: anchors[0].y
