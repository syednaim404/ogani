    <!-- Js Plugins -->
    <script src="{{ asset('/') }}website/assets/js/jquery-3.3.1.min.js"></script>
    <script src="{{ asset('/') }}website/assets/js/bootstrap.min.js"></script>
    <script src="{{ asset('/') }}website/assets/js/jquery.nice-select.min.js"></script>
    <script src="{{ asset('/') }}website/assets/js/jquery-ui.min.js"></script>
    <script src="{{ asset('/') }}website/assets/js/jquery.slicknav.js"></script>
    <script src="{{ asset('/') }}website/assets/js/mixitup.min.js"></script>
    <script src="{{ asset('/') }}website/assets/js/owl.carousel.min.js"></script>
    <script src="{{ asset('/') }}website/assets/js/main.js"></script>

    <script src="{{ asset('/') }}website/assets/js/xzoom.min.js"></script>
    <script src="{{ asset('/') }}website/assets/js/magnific-popup.js"></script>
    <script src="{{ asset('/') }}website/assets/js/plagin.js"></script>

    <script>
        $('#searchText').keyup(function() {
            var searchText = $(this).val();
            $.ajax({
                type: "GET",
                url: "{{ route('get.product.by.search.text') }}",
                data: {
                    search_text: searchText
                },
                dataType: "JSON",
                success: function(response) {
                    console.log(response);

                    var div = ' ';
                    div += '<section class="featured spad">';
                    div += '<div class="container">';
                    div += '<div class="row featured__filter">';

                    $.each(response, function(key, value) {

                        div +=
                        '<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">';
                        div += '<div class="featured__item">';

                        div +=
                            '<div class="featured__item__pic set-bg" style="background-image: url(' +
                            value.image + ');">';

                        div += '<ul class="featured__item__pic__hover">';
                        div += '<li><a href="#"><i class="fa fa-heart"></i></a></li>';
                        div += '<li><a href="#"><i class="fa fa-retweet"></i></a></li>';
                        div += '<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>';
                        div += '</ul>';

                        div += '</div>';

                        div += '<div class="featured__item__text">';
                        div += '<h6><a href="/product/detail/' + value.id + '">' + value.name +
                            '</a></h6>';
                        div += '<h5>BDT ' + value.selling_price + '</h5>';
                        div += '</div>';

                        div += '</div>';
                        div += '</div>';

                    });

                    div += '</div>';
                    div += '</div>';
                    div += '</section>';

                    $('#mainBody').empty();
                    $('#mainBody').append(div);

                }
            });
        });
    </script>
