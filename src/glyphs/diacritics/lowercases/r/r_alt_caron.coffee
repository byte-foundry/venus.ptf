exports.glyphs['r_alt_caron'] =
	unicode: 'ř'
	glyphName: 'rcaron'
	characterName: 'LATIN SMALL LETTER R WITH CARON'
	base: 'r_alt'
	advanceWidth: base.advanceWidth
	altImg: 'alt-grotesk-squared-r.svg'
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'caron'
			id: 'caron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
