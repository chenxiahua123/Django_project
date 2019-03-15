$(document).ready(function () {
    console.log(888)

    $('.add button').click(function () {
		console.log('加操作成功')

        var goodsid=$(this).attr('goodsid')

        var $that=$(this)

        console.log(goodsid)

        data={
		    'goodsid':goodsid
        }

        $.get('/addcart',data,function (response) {

            if (response.status==0){
                window.open('/login',target='_self')
            }else if (response.status==1){
                $that.parent().prev().val(response.number)
            }


        })
    })

    $('.raduce button').click(function () {

        var goodsid=$(this).attr('goodsid')

        console.log(goodsid)

        var $that=$(this)

        data={
            'goodsid':goodsid,
        }

        $.get('/minuscart',data,function (response) {


            if (response.status==0){
                window.open('/login',target='_self')
            }else if (response.status==1){
               $that.parent().next().val(response.number)
                if (response.number<=0){
                   $that.parent().next().val(1)
                }
            }

        })

    })



})