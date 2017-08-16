exports.glyphs['u_cap_dieresis'] =
	unicode: 'Ü'
	glyphName: 'Udieresis'
	characterName: 'LATIN CAPITAL LETTER U WITH DIAERESIS'
	base: 'U_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'dot_accent'
			id: 'dot_accent1'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - 60 - ( 15 / 85 ) * thickness * width
					y: parentAnchors[0].y
		1:
			base: 'dot_accent'
			id: 'dot_accent2'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + 60 + ( 15 / 85 ) * thickness * width
					y: parentAnchors[0].y
