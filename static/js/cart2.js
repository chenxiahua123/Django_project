$(function () {
    console.log(111111)

    sum()

    $('li #cross').click(function () {
        console.log('单击删除成功')

        cartid = $(this).attr('cartid')

        console.log(cartid)

        var $that = $(this)

        data = {
            'cartid': cartid,
        }

        $.get('/deletecart', data, function (response) {
            console.log(response)
            $that.parent().remove()
            var total = $('.allsum span strong').html(sum)
        })
        sum()
    })

    function sum() {
        var sum = 0
        $('.ware ul li').each(function () {
            console.log(222222)
            var price = $(this).find('.price').html()
            var number = $(this).find('.number').html()


            var total_1 = price * number

            console.log(price)
            console.log(number)
            console.log(total_1)
            var total_part = $(this).find('.total_1').html(total_1)
            sum += total_1
        })
        var total = $('.allsum span strong').html(sum)
    }

    // 单击勾选
    $('.ware ul li input').click(function () {
        console.log('勾选成功')

        var cartid=$(this).attr('cartid')

        console.log(cartid)

        data={
            'cartid':cartid,
        }

        $.get('/changestatus',data,function (response) {
            console.log(response)
        })
    })




})