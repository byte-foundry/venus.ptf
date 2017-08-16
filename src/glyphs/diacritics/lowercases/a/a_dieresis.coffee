exports.glyphs['a_dieresis'] =
	unicode: 'ä'
	glyphName: 'adieresis'
	characterName: 'LATIN SMALL LETTER A WITH DIAERESIS'
	base: 'a'
	advanceWidth: base.advanceWidth
	altImg: 'double-story-a.svg'
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
					x: parentAnchors[2].x
					y: parentAnchors[2].y
		1:
			base: 'dot'
			id: 'dot2'
			parentAnchors:
				0:
					x: parentAnchors[3].x
					y: parentAnchors[3].y
