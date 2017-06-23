exports.glyphs['e_macron'] =
	unicode: 'ē'
	glyphName: 'emacron'
	characterName: 'LATIN SMALL LETTER E WITH MACRON'
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
			base: 'macron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
