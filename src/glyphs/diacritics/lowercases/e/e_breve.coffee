exports.glyphs['e_breve'] =
	unicode: 'ĕ'
	glyphName: 'ebreve'
	characterName: 'LATIN SMALL LETTER E WITH BREVE'
	base: 'e'
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
