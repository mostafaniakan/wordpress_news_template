(function () {
    tinymce.create('tinymce.my.plugins', {
        init: function (editor, url) {

            editor.addButton('menu', {
                type: 'menubutton',
                text: 'لیست شورت کد های این قالب',
                menu: [
                    {
                        icon:'blockquote',
                        text: 'شورت کد نقل قول',
                        onclick: function () {
                            editor.execCommand(
                                "mceInsertContent",
                                false,
                                "[bq text=\"\" quote=\"\"]"
                            )
                        }
                    },

                    // shortcode video
                    {
                        text: 'دکمه افزودن شورت کد ویدیو',
                        image: url + '/tinymce/photo.png',
                        onclick: function () {
                            editor.execCommand(
                                "mceInsertContent",
                                false,
                                "[free-video src=\"\"]"
                            )
                        }
                    }

                ],
            })


            // //روش اول
            // // video
            // editor.addButton('video',{
            //     title:'دکمه افزودن شورت کد ویدیو',
            //     image:url+'/tinymce/photo.png',
            //     onclick:function () {
            //         editor.execCommand(
            //             "mceInsertContent",
            //             false,
            //             "[free-video src=\"\"]"
            //         )
            //     }
            // })
            //
            // // quote
            // editor.addButton('quote',{
            //     title:'دکمه افزودن شورت کد نقل قول',
            //     image:url+'/tinymce/quote.png',
            //     // text:"شورت کد",
            //     // icon:"ltr",
            //     onclick:function () {
            //         editor.execCommand(
            //             "mceInsertContent",
            //             false,
            //             "[bq text=\"\" quote=\"\"]"
            //         )
            //     }
            // })
        }
    })
    // // add tinymce.plugins.video to tinymce
    // tinymce.PluginManager.add('video', tinymce.my.plugins);
    //
    // // add tinymce.plugins.quote to tinymce
    // tinymce.PluginManager.add('quote', tinymce.my.plugins);

    // add tinymce.plugins.menu to tinymce
    tinymce.PluginManager.add('menu', tinymce.my.plugins);
})();


