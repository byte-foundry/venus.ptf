exports.glyphs['e_cap_caron'] =
	unicode: 'Ě'
	glyphName: 'Ecaron'
	characterName: 'LATIN CAPITAL LETTER E WITH CARON'
	base: 'E_cap'
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
			id: 'caron'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
