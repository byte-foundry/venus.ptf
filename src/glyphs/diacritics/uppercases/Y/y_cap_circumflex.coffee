exports.glyphs['y_cap_circumflex'] =
	unicode: 'Ŷ'
	glyphName: 'Ycircumflex'
	characterName: 'LATIN CAPITAL LETTER Y WITH CIRCUMFLEX'
	base: 'Y_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
