var Lock = function () {

    return {
        //main function to initiate the module
        init: function () {
             $.backstretch([
                 ctx + "/resources/mt/img/bg/2.jpg",
                 ctx + "/resources/mt/img/bg/3.jpg",
                 ctx + "/resources/mt/img/bg/4.jpg",
                 ctx + "/resources/mt/img/bg/1.jpg"
		        ], {
		          fade: 1000,
		          duration: 8000
		      });
        }

    };

}();