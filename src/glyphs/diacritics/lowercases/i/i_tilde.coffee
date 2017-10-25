exports.glyphs['i_tilde'] =
	unicode: 'ĩ'
	glyphName: 'itilde'
	characterName: 'LATIN SMALL LETTER I WITH TILDE'
	base: 'dotlessi'
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
			base: 'tilde'
			id: 'tilde'
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
