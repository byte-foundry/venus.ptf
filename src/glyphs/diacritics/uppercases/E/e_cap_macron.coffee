exports.glyphs['e_cap_macron'] =
	unicode: 'Ē'
	glyphName: 'Emacron'
	characterName: 'LATIN CAPITAL LETTER E WITH MACRON'
	base: 'E_cap'
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
