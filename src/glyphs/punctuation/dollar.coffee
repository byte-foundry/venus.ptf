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
			id: 'line1'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x - 25 - ( 75 / 2 )
					y: capHeight
		1:
			base: 'line'
			id: 'line2'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + 25 + ( 75 / 2 )
					y: capHeight
