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
					x: parentAnchors[0].x
					y: parentAnchors[0].y
