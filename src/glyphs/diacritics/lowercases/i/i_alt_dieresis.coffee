exports.glyphs['i_alt_dieresis'] =
	unicode: 'ï'
	glyphName: 'idieresis'
	characterName: 'LATIN SMALL LETTER I WITH DIAERESIS'
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
			base: 'dot'
			id: 'dot1'
			parentAnchors:
				0:
					x: parentAnchors[0].x - 95 / 2 - minThickness / 2
					y: parentAnchors[0].y
		1:
			base: 'dot'
			id: 'dot2'
			parentAnchors:
				0:
					x: parentAnchors[0].x + 95 / 2 + minThickness / 2
					y: parentAnchors[0].y
