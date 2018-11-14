exports.glyphs['r_alt_acute'] =
	unicode: 'ŕ'
	glyphName: 'racute'
	characterName: 'LATIN SMALL LETTER R WITH ACUTE'
	base: 'r_alt'
	altImg: 'alt-grotesk-squared-r.svg'
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
