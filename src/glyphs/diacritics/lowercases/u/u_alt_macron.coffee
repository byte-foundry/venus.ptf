exports.glyphs['u_alt_macron'] =
	unicode: 'ū'
	glyphName: 'umacron'
	characterName: 'LATIN SMALL LETTER U WITH MACRON'
	base: 'u_alt'
	altImg: 'alt-grotesk-squared-u.svg'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'macron'
			id: 'macron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
