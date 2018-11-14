exports.glyphs['u_alt_ring'] =
	unicode: 'ů'
	glyphName: 'uring'
	characterName: 'LATIN SMALL LETTER U WITH RING ABOVE'
	base: 'u_alt'
	altImg: 'alt-grotesk-squared-u.svg'
	advanceWidth: base.advanceWidth
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
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
