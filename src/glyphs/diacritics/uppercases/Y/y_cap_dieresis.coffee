exports.glyphs['y_cap_dieresis'] =
	unicode: 'Ÿ'
	glyphName: 'Ydieresis'
	characterName: 'LATIN CAPITAL LETTER Y WITH DIAERESIS'
	base: 'Y_cap'
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
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - 60 - ( 15 / 85 ) * thickness * width
					y: parentAnchors[0].y
		1:
			base: 'dot_accent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + 60 + ( 15 / 85 ) * thickness * width
					y: parentAnchors[0].y
