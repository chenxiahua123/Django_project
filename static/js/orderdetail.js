$(document).ready(function (){
    $('#alipay').click(function () {



        data={
            'orderid':$(this).attr('data-orderid'),
        }

        // 支付请求
        $.get('/pay',data,function (response){

            console.log(response)
            if (response.status==1){
                console.log(11111111111111)
                window.open(response.alipayurl,target='_self')
                console.log(response.alipayurl)
                console.log(22222222222)
            }
        })

    })
})