exports.glyphs['u_alt_acute'] =
	unicode: 'ú'
	glyphName: 'uacute'
	characterName: 'LATIN SMALL LETTER U WITH ACUTE'
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
			base: 'acute'
			id: 'acute'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
