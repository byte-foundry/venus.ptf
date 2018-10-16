exports.glyphs['a_alt_ring'] =
	unicode: 'å'
	glyphName: 'aring'
	characterName: 'LATIN SMALL LETTER A WITH RING ABOVE'
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
			base: 'ring'
			id: 'ring'
			parentAnchors:
				0:
					x: parentAnchors[2].x
					y: parentAnchors[2].y
