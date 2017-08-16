exports.glyphs['n_cap_tilde'] =
	unicode: 'Ñ'
	glyphName: 'Ntilde'
	characterName: 'LATIN CAPITAL LETTER N WITH TILDE'
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
			base: 'tilde'
			id: 'tilde'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
