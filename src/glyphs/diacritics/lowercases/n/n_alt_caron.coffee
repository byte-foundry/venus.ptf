exports.glyphs['n_alt_caron'] =
	unicode: 'ň'
	glyphName: 'ncaron'
	characterName: 'LATIN SMALL LETTER N WITH CARON'
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
			base: 'caron'
			id: 'caron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
