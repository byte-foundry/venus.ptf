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
					x: anchors[1].x
					y: anchors[1].y
				1:
					x: anchors[0].x
