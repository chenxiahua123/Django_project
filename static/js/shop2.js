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
})