exports.glyphs['u_cap_ring'] =
	unicode: 'Ů'
	glyphName: 'Uring'
	characterName: 'LATIN CAPITAL LETTER U WITH RING ABOVE'
	base: 'U_cap'
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
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
