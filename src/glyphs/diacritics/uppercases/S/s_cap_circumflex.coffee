exports.glyphs['s_cap_circumflex'] =
	unicode: 'Ŝ'
	glyphName: 'Scircumflex'
	characterName: 'LATIN CAPITAL LETTER S WITH CIRCUMFLEX'
	base: 'S_cap'
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
			id: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
