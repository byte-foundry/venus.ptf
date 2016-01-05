exports.glyphs['u_breve'] =
	unicode: 'ŭ'
	glyphName: 'ubreve'
	characterName: 'LATIN SMALL LETTER U WITH BREVE'
	base: 'u'
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
