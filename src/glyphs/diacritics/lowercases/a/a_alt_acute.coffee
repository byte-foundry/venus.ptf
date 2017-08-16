exports.glyphs['a_alt_acute'] =
	unicode: 'á'
	glyphName: 'aacute'
	characterName: 'LATIN SMALL LETTER A WITH ACUTE'
	base: 'a_alt'
	advanceWidth: base.advanceWidth
	altImg: 'single-story-a.svg'
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
			parentAnchors:
				0:
					x: parentAnchors[2].x
					y: parentAnchors[2].y
