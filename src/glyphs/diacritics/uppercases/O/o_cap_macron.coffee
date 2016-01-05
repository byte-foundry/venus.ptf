exports.glyphs['o_cap_macron'] =
	unicode: 'Ō'
	glyphName: 'Omacron'
	characterName: 'LATIN CAPITAL LETTER O WITH MACRON'
	base: 'O_cap'
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
					x: anchors[0].x
					y: anchors[0].y
