exports.glyphs['a_alt_dieresis'] =
	unicode: 'ä'
	glyphName: 'adieresis'
	characterName: 'LATIN SMALL LETTER A WITH DIAERESIS'
	base: 'a_alt'
	advanceWidth: base.advanceWidth
	altImg: 'alt-grotesk-single-story-a.svg'
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'dot'
			id: 'dot1'
			parentAnchors:
				0:
					x: parentAnchors[3].x
					y: parentAnchors[3].y
		1:
			base: 'dot'
			id: 'dot2'
			parentAnchors:
				0:
					x: parentAnchors[4].x
					y: parentAnchors[4].y
