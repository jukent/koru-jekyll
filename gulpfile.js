const { series, src, dest } = require('gulp');
const del = require('del');

function clean() {
    return del(['assets/koru-base/**/*']);
}

function copy() {
    return src('node_modules/koru-base/**/*')
        .pipe(dest('assets/koru-base/'));
}

exports.default = series(clean, copy);