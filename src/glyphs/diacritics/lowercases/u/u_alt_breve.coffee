exports.glyphs['u_alt_breve'] =
	unicode: 'ŭ'
	glyphName: 'ubreve'
	characterName: 'LATIN SMALL LETTER U WITH BREVE'
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
			base: 'breve'
			id: 'breve'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
