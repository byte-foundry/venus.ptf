exports.glyphs['i_cap_circumflex'] =
	unicode: 'Î'
	glyphName: 'Icircumflex'
	characterName: 'LATIN CAPITAL LETTER I WITH CIRCUMFLEX'
	base: 'I_cap'
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
			id: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
