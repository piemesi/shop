'use strict';

let ExtractTextPlugin = require("extract-text-webpack-plugin");

module.exports = {
    context: __dirname + '/frontend',
    entry:  {
        main: './js/9setting_catalog_list',
        info: './js/info',
        styles: './css',
        cart: './js/cart',
        product: './js/product',
    },
    output:  {
        path:     __dirname + '/public',
        publicPath: '/',
        filename: '[name].js'
    },

    resolve: {
        extensions: ['', '.js', '.styl', '.css'   ]

        // ,alias: {
        //     'masonry': 'masonry-layout',
        //     'isotope': 'isotope-layout'
        // }


    },
    // externals:{
    //     jQuery: jQuery
    // },



    module: {

        loaders: [{
            test:   /\.js$/,
            loader: "babel?presets[]=es2015"
        }, {
            test:   /\.jade$/,
            loader: "jade"
        }, {
            test:   /\.css$/,
            include: /\/photoswipe\/.*/,
            loader: ExtractTextPlugin.extract('css?resolve url')
        }, {
            test:   /\.styl$/,
            exclude: /\/photoswipe\/.*/,
            loader: ExtractTextPlugin.extract('css!stylus?resolve url')
        }, {
            test:   /\.(png|jpg|svg|gif|ttf|eot|woff|woff2)$/,
            loader: 'file?name=[path][name].[ext]'
        },{
            test: /isotope\-|fizzy\-ui\-utils|desandro\-|masonry|outlayer|get\-size|doc\-ready|eventie|eventemitter/,
            loader: 'imports?define=>false&this=>window'
        }
        ]

    },

    plugins: [
        new ExtractTextPlugin('[name].css', {allChunks: true})
    ]
};


