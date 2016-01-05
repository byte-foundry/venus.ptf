exports.glyphs['s_cap_caron'] =
	unicode: 'Š'
	glyphName: 'Scaron'
	characterName: 'LATIN CAPITAL LETTER S WITH CARON'
	base: 'S_cap'
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
