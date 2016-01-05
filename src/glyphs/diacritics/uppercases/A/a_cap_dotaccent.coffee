exports.glyphs['a_cap_dotaccent'] =
	unicode: 'Ȧ'
	glyphName: 'Adotaccent'
	characterName: 'LATIN CAPITAL LETTER A WITH DOT ABOVE'
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
			base: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
