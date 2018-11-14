exports.glyphs['t_alt_caron'] =
	unicode: 'ť'
	glyphName: 'tcaron'
	characterName: 'LATIN SMALL LETTER T WITH CARON'
	base: 't_alt3'
	altImg: 'alt-grotesk-cross-squared-t.svg'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'caronSlovak'
			id: 'caronSlovak'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: ascenderHeight + overshoot
