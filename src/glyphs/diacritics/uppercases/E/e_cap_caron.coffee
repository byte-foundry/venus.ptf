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
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
