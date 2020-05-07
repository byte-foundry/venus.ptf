exports.glyphs['u_alt_circumflex'] =
	unicode: 'û'
	glyphName: 'ucircumflex'
	characterName: 'LATIN SMALL LETTER U WITH CIRCUMFLEX'
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
			base: 'circumflex'
			id: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y