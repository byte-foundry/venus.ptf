exports.glyphs['a_ring'] =
	unicode: 'å'
	glyphName: 'aring'
	characterName: 'LATIN SMALL LETTER A WITH RING ABOVE'
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
			base: 'ring'
			id: 'ring'
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
