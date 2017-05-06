'use_strict';
const NODE_ENV = process.env.NODE_ENV || 'development' ;
const ExtractTextPlugin = require("extract-text-webpack-plugin");

// let webpack = require('webpack');
const webpack = require('webpack');

module.exports = {

    context: __dirname + '/frontend',
    entry:  {
        // alljs: ['./js/*.js'],
        styles: './css/index'
    },
    output:  {
        path:     __dirname + '/public',
        publicPath: '/',
        filename: '[name].js'
    },

    resolve: {
        extensions: [  '.js', '.styl']
    },


    // context: __dirname + '/resources/assets/',
//
//    entry: './resources/assets/js/app.js', //./resources/assets/
//     entry: {
//         jsF: './js/1kernel_main.js',
//         cssF: './css'
//     },
//     output: {
//         path: __dirname + '/public/js/',
//         publicPath: 'js/',
//         filename: 'all.js',
//         library: 'home'
//     },

    watch: NODE_ENV == 'development', //true,

    watchOptions: {
        aggregateTimeout : 200
    },

    devtool : NODE_ENV == 'development' ? "cheap-inline-module-source-map" : 'source-map', //null

    // plugins: [
    //     new ExtractTextPlugin("[name].css"),
    //   //  new webpack.NoErrorsPlugin(),
    //     new webpack.DefinePlugin({ ///???
    //         NODE_ENV: JSON.stringify(NODE_ENV)
    //     }) //,
    //     // new webpack.optimize.CommonsChunkPlugin({  //hasRuntime()
    //     //     name: 'common'
    //     // })
    // ]
    // ,
    //
    //
    // resolve:{ // где ищем если не указан полный путь
    //     modulesDirectories: ['node_modules'],
    //     extensions:['', '.js']
    // },
    //
    // resolveLoader:{
    //     modulesDirectories: ['node_modules'],
    //     moduleTemplates:['*-loader', '*'],
    //     extensions:['', '.js']
    // },

    module: {

        loaders: [{
            test:   /\.js$/,
            loader: "babel?presets[]=es2015"
        // }, {
        //     test:   /\.jade$/,
        //     loader: "jade"
        }, {
            test:   /\.styl$/,
            loader: ExtractTextPlugin.extract('css!stylus?resolve url') //?resolve url
        // }, {
        //     test:   /\.(png|jpg|svg|ttf|eot|woff|woff2)$/,
        //     loader: 'file?name=[path][name].[ext]'
        }]

    },

    plugins: [
        new ExtractTextPlugin({filename:'[name].css', allChunks: true}),
        new webpack.DefinePlugin({ ///???
            NODE_ENV: JSON.stringify(NODE_ENV)
        })
    ]

    // module: {
    //     loaders:[{
    //         test: /\.js$/,
    //         loader: 'babel-core' //?optional[]=runtime
    //     },{
    //         test: /\.css$/,
    //         loader: ExtractTextPlugin.extract("css-loader")
    //     }]
    // }
};

if(NODE_ENV=='production'){
    module.exports.plugins.push(
        new webpack.optimize.UglifyJsPlugin({
            compress: {
                warnings: false,
                drop_console: true,
                unsafe: true
            }
        })
    )
}
//
// module.exports = {
//     // The standard entry point and output config
//     entry: {
//         posts: "./posts",
//         post: "./post",
//         about: "./about"
//     },
//     output: {
//         filename: "[name].js",
//         chunkFilename: "[id].js"
//     },
//     module: {
//         loaders: [
//             // Extract css files
//             {
//                 test: /\.css$/,
//                 loader: ExtractTextPlugin.extract("css-loader")
//             }
//             // Optionally extract less files
//             // or any other compile-to-css language
//             // {
//             //     test: /\.less$/,
//             //     loader: ExtractTextPlugin.extract("style-loader", "css-loader!less-loader")
//             // }
//             // You could also use other loaders the same way. I. e. the autoprefixer-loader
//         ]
//     },
//     // Use the plugin to specify the resulting filename (and add needed behavior to the compiler)
//
// }