exports.glyphs['y_alt_acute'] =
	unicode: 'ý'
	glyphName: 'yacute'
	characterName: 'LATIN SMALL LETTER Y WITH ACUTE'
	base: 'y_alt'
	altImg: 'alt-grotesk-straight-y.svg'
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
