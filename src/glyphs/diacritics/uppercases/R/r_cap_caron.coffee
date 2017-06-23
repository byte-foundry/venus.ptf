exports.glyphs['r_cap_caron'] =
	unicode: 'Ř'
	glyphName: 'Rcaron'
	characterName: 'LATIN CAPITAL LETTER R WITH CARON'
	base: 'R_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'caron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
