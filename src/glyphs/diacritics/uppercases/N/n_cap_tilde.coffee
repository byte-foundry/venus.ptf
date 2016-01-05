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
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
