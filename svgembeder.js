var through = require('through2'),
	path = require('path'),
	fs = require('fs'),
	svgo = new (require('svgo'))(),
	_ = require('lodash');

const PLUGIN_NAME = 'gulp-svgembeder';

function svgembed(content, cb) {
	var font = JSON.parse(content);
	var tasks = [];

	Object.keys(font.glyphs).forEach(function (glyphName) {
		var glyph = font.glyphs[glyphName];
		if (glyph.altImg) {
			tasks.push(new Promise(function (resolve, reject) {
				var data = fs.readFile(path.join('./src/images', glyph.altImg), 'utf8', function (err, data) {
					if (err) reject(err);

					svgo.optimize(data, function(cleanData) {
						glyph.altImg = 'data:image/svg+xml;utf-8,' + encodeURIComponent(cleanData.data);

						resolve();
					});
				});
			}).catch(function (err) {console.warn(err.message);}));
		}
	});

	Promise.all(tasks).then(function () {
		cb(JSON.stringify(font));
	});
}

// Replace altImg file value with the file content as a data uri
function svgembeder(/*prefixText*/) {
	var stream = through.obj(function(file, enc, cb) {
		if (file.isNull()) {
			return cb(null, file);
		}

		if (file.isStream()) {
			return cb(new Error('Streaming not supported'));
		}

		svgembed(String(file.contents), function (data) {
			file.contents = new Buffer(data);

			cb(null, file);
		});
	});

	return stream;
}

module.exports = svgembeder;
