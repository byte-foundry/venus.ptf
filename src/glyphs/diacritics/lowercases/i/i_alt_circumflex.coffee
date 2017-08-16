exports.glyphs['i_alt_circumflex'] =
	unicode: 'î'
	glyphName: 'icircumflex'
	characterName: 'LATIN SMALL LETTER I WITH CIRCUMFLEX'
	base: 'i_alt'
	advanceWidth: base.advanceWidth
	altImg: 'top-serif-i.svg'
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'circumflex'
			id: 'circumflex'
			parentAnchors:
				0:
					x: contours[0].nodes[0].x
					y: xHeight + diacriticHeight
