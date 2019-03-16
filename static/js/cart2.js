$(function(){
    console.log(111111)
    var sum=0
    $('.ware ul li').each(function () {
        console.log(222222)
		var price=$(this).find('.price').html()
		var number=$(this).find('.number').html()


        var total_1=price*number

		console.log(price)
		console.log(number)
        console.log(total_1)
        var total_part=$(this).find('.total_1').html(total_1)
        sum+=total_1
    })
    console.log(sum)

    var total=$('.allsum span strong').html(sum)

})