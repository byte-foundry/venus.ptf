exports.lib =
	parameters:
		capHeight: xHeight + capDelta
		contrast: _contrast * -1
		ascenderHeight: xHeight + ascender
		spacing: 1.1
		minThickness: Math.max( 45, ( 125 / 115 ) * thickness )
	transforms: Array(
		['skewX', slant + 'deg']
	)
