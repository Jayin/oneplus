<?php echo $header; ?> 
  <style type="text/css">
  </style>
  <article>
      <div class="container cf aL sell-cont">
        <div class="b-detail-l aC">
          <div class="b-pic pic-fez">
            <ul class="p-pic" id="p-pic">
                  <?php foreach ($images as $image) { ?>
                      <li><img src="<?php echo $image['popup']?>" alt="">
                  <?php }?>
            </ul>
          </div>
          <div class="p-pager">
              <ul class="ul-pager" id="ul-pager">
                      <?php 
                       for ($i = 0;$i<count($images);$i++ ) { 
                          $image = $images[$i];?>
                          <li><a href="javascript:;" data-slide-index="<?php echo $i;?>"><img src="<?php echo $image['popup'];?>" alt=""></a></li>
                      <?php }?>
              </ul>
          </div>
          <!--<div class="p-sale"><p class="sale-info">特价</p></div> -->
        </div>
        <div class="b-detail-r sell-ph-det">
          <h1 class="p-title"><?php echo $product_name;?></h1>
          <p class="p-des"><a href="#"></a></p>
                <div class="p-price">
                    <label class="s-title2">价格：</label><strong><?php echo $price;?></strong>
                </div>
         
                <!--规格属性-->
                <div class="p-capacity">
                      <h2 class="p-tr-title">Available Options</h2>
                      <dl class="p-tr cf">
                        <?php foreach ($options['option_value'] as $option_value) { ?>
                           <dd>
                            <a class="p-td"><i></i><?php echo $option_value['name']; ?></a>
                          </dd>
                        <?php }?>
                        
 
                    </dl>
                </div>
              
                <div class="p-qty new-qty cf">
                    <label class="s-title2">数量：</label>
                    <div class="box-qty-new">
                        <span class="i-minus"></span>
                        <span class="i-qty" style="-moz-user-select:none;" onselectstart="return false;">1</span>
                        <span class="i-plus"></span>
                    </div>
                </div>

                <div class="p-bbtn cf">
                    <input type="hidden" id="goodsCode" value="0101010601" />
                    <input id="addCartBtn" data-disabled="true" type="button" class="btn fl btn-shop-red btn-shop-xxl" value="加入购物车" >
                </div>
            </div>
        </div>
    </article>

    <article>
        <div class="as-detail container">
            <ul class="as-detail-nav">
                <li class="f"><a href="<?php echo $product_url;?>#anchor-pic">商品详情</a></li>
                <li class="s"><a href="<?php echo $product_url;?>#anchor-spec">规格参数</a></li>
                <li class="l"><a href="<?php echo $product_url;?>#anchor-question">常见问题</a></li>
            </ul>
            <!--商品详情-->
             <a name="anchor-pic"></a>
            <ul class="as-detail-pic" name="anchor-pic">
                 <?php echo $product_description;?>

            <!--规格参数-->
             <a name="anchor-spec"></a>
            <section>
             
              <div class="box as-detail-spec" >
                    <h2 >规格参数</h2>
                    <div class="c cf p-info-list">
                      <?php foreach ($attrs as $attr) { ?>
                         <div class="phone-info">
                            <h3 class="p-h"><?php echo $attr['name'];?></h3>
                            <div class="p-info">
                              <?php foreach ($attr['attribute'] as $attribute) { ?>
                                <p> <?php echo $attribute['text'];?></p>
                              <?php }?>
                            </div>
                        </div>
                      <?php }?>
                    </div>
                </div>
            </section>

            <!--常见问题-->
            <a name="anchor-question"></a>
            <section>
               
                <div class="box as-detail-question" >
                    <h2>常见问题</h2>
                    <div class="c cf">
                        <dl>
                            <dt>Not things</dt>
                        </dl>
                       
                    </div>
                </div>
            </section>
        </div>
    </article>
    <div class="s-large"></div>
    <script type="text/javascript" src="catalog/view/javascript/jquery/jquery.bxslider.min.js"></script>
 
    <script type="text/javascript">
        var currSpecList = [];
        $(function(){
            $('#p-pic').bxSlider({mode:'fade',pagerCustom:'#ul-pager',responsive:true});
  
        });
    </script>

    <script type="text/javascript">
    $(document).ready(function() {
       

        $("#addCartBtn").on("click", function() {
           alert('add to cart..');
        });
        //option value
        $('.p-td').on('click',function(){
            $('.p-td').removeClass('sel');
            $(this).addClass('sel');
        });

        //+ -
        $('.i-minus').on('click',function(){
            if(parseInt($('.i-qty').text())>0){
              $('.i-qty').text( parseInt($('.i-qty').text())-1);
            }
        });

        $('.i-plus').on('click',function(){
            $('.i-qty').text(parseInt($('.i-qty').text()) + 1);
        });
    });

    </script>
<?php echo $footer; ?>