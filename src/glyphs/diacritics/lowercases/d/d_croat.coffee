exports.glyphs['d_croat'] =
	unicode: 'đ'
	glyphName: 'dcroat'
	characterName: 'LATIN SMALL LETTER D WITH STROKE'
	base: 'd'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'hstroke'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
				1:
					x: parentAnchors[0].x
