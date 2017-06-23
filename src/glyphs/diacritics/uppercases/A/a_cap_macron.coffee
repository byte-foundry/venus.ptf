exports.glyphs['a_cap_macron'] =
	unicode: 'Ā'
	glyphName: 'Amacron'
	characterName: 'LATIN CAPITAL LETTER A WITH MACRON'
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
			base: 'macron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
