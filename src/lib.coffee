exports.lib =
	parameters:
		diacriticHeight: 80 * ( xHeight / xHeight ) # dirty workaround
		capHeight: xHeight + capDelta
		scCapHeight: xHeight + ( capDelta / 3 ) * smallCapDelta
		scThickness: thickness * 0.9
		scWidth: width * 0.7
		contrast: _contrast * -1
		contrastExtremity: _contrastExtremity * -1
		ascenderHeight: xHeight + ascender
		spacing: 1 * ( width / width ) # dirty workaround
		minThickness: Math.max( 45, ( 125 / 115 ) * thickness )
		correctWidthAperture: Math.max(0, 180 - 180 * width)
		correctTensionAperture: 1.2 * ( aperture / aperture ) # dirty workaround
		serifHeight:
			if serifWidth < 0.1 && serifHeight < 0.1
			then Math.max(5, serifHeight)
			else serifHeight
