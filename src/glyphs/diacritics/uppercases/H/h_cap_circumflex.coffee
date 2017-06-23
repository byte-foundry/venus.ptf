exports.glyphs['h_cap_circumflex'] =
	unicode: 'Ĥ'
	glyphName: 'Hcircumflex'
	characterName: 'LATIN CAPITAL LETTER H WITH CIRCUMFLEX'
	base: 'H_cap'
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
