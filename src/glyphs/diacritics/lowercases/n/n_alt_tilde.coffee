exports.glyphs['n_alt_tilde'] =
	unicode: 'ñ'
	glyphName: 'ntilde'
	characterName: 'LATIN SMALL LETTER N WITH TILDE'
	base: 'n_alt'
	altImg: 'alt-grotesk-squared-n.svg'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
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
