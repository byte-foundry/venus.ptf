exports.glyphs['a_cap_ring'] =
	unicode: 'Å'
	glyphName: 'Aring'
	characterName: 'LATIN CAPITAL LETTER A WITH RING ABOVE'
	base: 'A_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'ring'
			id: 'ring'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
