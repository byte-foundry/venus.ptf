exports.glyphs['l_acute'] =
	unicode: 'ĺ'
	glyphName: 'lacute'
	characterName: 'LATIN SMALL LETTER L WITH ACUTE'
	base: 'l'
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
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
