exports.lib =
	parameters:
		capHeight: xHeight + capDelta
		contrast: _contrast * -1
		ascenderHeight: xHeight + ascender
		spacing: 1.1
	transforms: Array(
		['skewX', slant + 'deg']
	)
