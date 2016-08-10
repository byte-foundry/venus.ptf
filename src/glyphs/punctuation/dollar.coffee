exports.glyphs['dollar'] =
	unicode: '$'
	glyphName: 'dollar'
	characterName: 'DOLLAR SIGN'
	base: 'S_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: 'line'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x - 25 - ( 75 / 2 )
					y: capHeight
		1:
			base: 'line'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x + 25 + ( 75 / 2 )
					y: capHeight
