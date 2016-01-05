exports.glyphs['s_cap_cedilla'] =
	unicode: 'Ş'
	glyphName: 'uni015E'
	characterName: 'LATIN CAPITAL LETTER S WITH CEDILLA'
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
			base: 'cedilla'
			copy: true
			parentAnchors:
				0:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].expandedTo[1].y + ( contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[1].expandedTo[1].y ) * 0.4
