exports.glyphs['o_breve'] =
	unicode: 'ŏ'
	glyphName: 'obreve'
	characterName: 'LATIN SMALL LETTER O WITH BREVE'
	base: 'o'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
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
