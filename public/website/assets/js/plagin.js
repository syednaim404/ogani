(function ($) {
    $(document).ready(function () {
        $('.xzoom3, .xzoom-gallery3').xzoom({ position: 'lens', lensShape: 'circle', sourceClass: 'xzoom-hidden' });


        var isTouchSupported = 'ontouchstart' in window;

        if (isTouchSupported) {
            //If touch device
            $('.xzoom3').each(function () {
                var xzoom = $(this).data('xzoom');
                xzoom.eventunbind();
            });

            $('.xzoom3').each(function () {
                var xzoom = $(this).data('xzoom');
                $(this).hammer().on("tap", function (event) {
                    event.pageX = event.gesture.center.pageX;
                    event.pageY = event.gesture.center.pageY;
                    var s = 1, ls;

                    xzoom.eventmove = function (element) {
                        element.hammer().on('drag', function (event) {
                            event.pageX = event.gesture.center.pageX;
                            event.pageY = event.gesture.center.pageY;
                            xzoom.movezoom(event);
                            event.gesture.preventDefault();
                        });
                    }

                    xzoom.eventleave = function (element) {
                        element.hammer().on('tap', function (event) {
                            xzoom.closezoom();
                        });
                    }
                    xzoom.openzoom(event);
                });
            });

        } else {
            //If not touch device

            //Integration with fancybox plugin
            $('#xzoom-fancy').bind('click', function (event) {
                var xzoom = $(this).data('xzoom');
                xzoom.closezoom();
                $.fancybox.open(xzoom.gallery().cgallery, { padding: 0, helpers: { overlay: { locked: false } } });
                event.preventDefault();
            });

            //Integration with magnific popup plugin
            $('#xzoom-magnific').bind('click', function (event) {
                var xzoom = $(this).data('xzoom');
                xzoom.closezoom();
                var gallery = xzoom.gallery().cgallery;
                var i, images = new Array();
                for (i in gallery) {
                    images[i] = { src: gallery[i] };
                }
                $.magnificPopup.open({ items: images, type: 'image', gallery: { enabled: true } });
                event.preventDefault();
            });
        }
    });
})(jQuery);



// Function: Validate email input
function checkEmail() {
    var email = $('#email').val();
    // Regex: Ensure email starts with a letter, allows numbers inside, and ends with a 2-3 character domain
    // var regex = /^[A-Za-z][A-Za-z0-9]*@[A-Za-z0-9]+\.(com|net|org|edu|gov|info|io|biz)$/;
    var regex = /^[A-Za-z][A-Za-z0-9]*@[a-z]+\.(com|net|org|edu|gov|info|io|biz|co)$/;
    if (regex.test(email)) {
        $('#emailMessage').text(''); // Clear any previous error
        return true;
    } else {
        $('#emailMessage').text('Please enter a valid email.');
        return false;
    }
}

// Function: Validate password input
function checkPassword() {
    var password = $('#password').val();
    // Regex: Ensure password has at least 8 characters, with one uppercase, one lowercase, one number, and one special character
    var regex = /^(?=.*[!@#$%^&*]).{8,}$/;
    if (regex.test(password)) {
        $('#passwordMessage').text(''); // Clear error
        return true;
    } else {
        $('#passwordMessage').text(
            'Password must be at least 8 characters one special character.'
        );
        return false;
    }
}


// Event: Show/Hide password when checkbox is clicked
$('#passwordShow').click(function () {
    if ($(this).is(':checked')) {
        $('#password').attr('type', 'text'); // Show password
    } else {
        $('#password').attr('type', 'password'); // Hide password
    }
});



// Event: Validate email input on keyup
$('#email').keyup(function () {
    checkEmail(); // Call email validation function
});

// Event: Validate password input on keyup
$('#password').keyup(function () {
    checkPassword(); // Call password validation function
});



// Event: Validate all fields on form submission
$('#regitrationForm').submit(function (event) {
    var isEmailValid = checkEmail();
    var isPasswordValid = checkPassword();

    if (isEmailValid && isPasswordValid) {
        return true; // All validations passed, allow form submission
    } else {
        event.preventDefault(); // Prevent submission if any validation fails
        return false;
    }
});



