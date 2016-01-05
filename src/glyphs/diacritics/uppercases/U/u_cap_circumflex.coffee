exports.glyphs['u_cap_circumflex'] =
	unicode: 'Û'
	glyphName: 'Ucircumflex'
	characterName: 'LATIN CAPITAL LETTER U WITH CIRCUMFLEX'
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
			base: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
