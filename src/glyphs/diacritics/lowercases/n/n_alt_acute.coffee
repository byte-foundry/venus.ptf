exports.glyphs['n_alt_acute'] =
	unicode: 'ń'
	glyphName: 'nacute'
	characterName: 'LATIN SMALL LETTER N WITH ACUTE'
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
			base: 'acute'
			id: 'acute'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
