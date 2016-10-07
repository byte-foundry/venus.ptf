exports.glyphs['d_cap_croat'] =
	unicode: 'Đ'
	glyphName: 'Dcroat'
	characterName: 'LATIN CAPITAL LETTER D WITH STROKE'
	base: 'D_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
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
