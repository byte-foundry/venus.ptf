exports.lib =
	parameters:
		capHeight: xHeight + capDelta
		scCapHeight: xHeight + thickness
		scThickness: thickness * 0.9
		scWidth: width * 0.8
		contrast: _contrast * -1
		contrastExtremity: _contrastExtremity * -1
		ascenderHeight: xHeight + ascender
		spacing: 1 * ( width / width ) # dirty workaround
		diacriticHeight: 70 * ( width / width ) # dirty workaround
		minThickness: Math.max( 45, ( 125 / 115 ) * thickness )
		correctWidthAperture: Math.max(0, 180 - 180 * width)
		correctTensionAperture: 1.2 * ( aperture / aperture ) # dirty workaround
		serifHeight:
			if serifWidth > 1
			then Math.max(4, serifHeight)
			else serifHeight
		serifWidth:
			if serifHeight > 1
			then Math.max(4, serifWidth)
			else serifWidth
	transforms: Array(
		['skewX', slant + 'deg']
	)
