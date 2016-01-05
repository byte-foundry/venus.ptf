exports.glyphs['i_cap_breve'] =
	unicode: 'Ĭ'
	glyphName: 'Ibreve'
	characterName: 'LATIN CAPITAL LETTER I WITH BREVE'
	base: 'I_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'breve'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
