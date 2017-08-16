exports.glyphs['i_dieresis'] =
	unicode: 'ï'
	glyphName: 'idieresis'
	characterName: 'LATIN SMALL LETTER I WITH DIAERESIS'
	base: 'i'
	advanceWidth: base.advanceWidth
	altImg: 'full-serifs-i.svg'
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: parentAnchors[0].x - 95 / 2 - minThickness / 2
					y: parentAnchors[0].y
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: parentAnchors[0].x + 95 / 2 + minThickness / 2
					y: parentAnchors[0].y
