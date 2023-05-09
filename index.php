<?php
include "koneksi.php";
?>
<?PHP
header('Access-Control-Allow-Origin: *');
?>
<?php
    function tanggal_indonesia($tanggal){
        $bulan = array (
        1 =>   'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
        );
        
        $pecahkan = explode('-', $tanggal);
        
        // variabel pecahkan 0 = tanggal
        // variabel pecahkan 1 = bulan
        // variabel pecahkan 2 = tahun
         
        return $bulan[ (int)$pecahkan[1] ] . ' ' . $pecahkan[0];
    }

    function tanggal_indonesia1($tanggal){
        $bulan = array (
        1 =>   'Jan',
        'Feb',
        'Mar',
        'Apr',
        'Mei',
        'Jun',
        'Jul',
        'Agst',
        'Sept',
        'Okt',
        'Nov',
        'Des'
        );
        
        $pecahkan = explode('-', $tanggal);
        
        // variabel pecahkan 0 = tanggal
        // variabel pecahkan 1 = bulan
        // variabel pecahkan 2 = tahun
         
        return $bulan[ (int)$pecahkan[1] ];
    }
    
    //echo tanggal_indonesia1(date('Y-m-d'));
    //echo '<br>'; // Hasilnya menampilkan format tanggal 11 Oktober 2017
    ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="refresh" content="30">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Event Calendar</title>
    <link rel="stylesheet" href="style.css" />
    <style>
      body {
  font-family: 'Noto Sans',sans-serif;
}
      h2.ppb_title {
    font-size: 50px;
    margin-top: 0;
    }
    h2.ppb_title {
        font-size: 36px;
        text-transform: none;
    }
    #page_caption h1, .ppb_title, .post_caption h1 {
        line-height: 1;
    }

    #page_caption h1, .ppb_title, .post_caption h1, .page_tagline {
        text-align: left;
    }
    #page_caption h1, .ppb_title, .post_caption h1 {
        font-weight: 700;
        text-transform: uppercase;
        letter-spacing: 0px;
    }
    #page_caption h1, .ppb_title, .post_caption h1, .ppb_speaker_grid .speaker_info_wrapper h3, .ppb_speaker_grid .speaker_info_wrapper h4, .ppb_speaker_classic .speaker_info_wrapper h3, .ppb_speaker_classic .speaker_info_wrapper h4 {
        font-size: 20px;
        color: #082174;
    }
    #page_caption h1, .ppb_title {
    font-size: 30px;
    color: #082174;
    font-family: Poppins, Helvetica, Arial, sans-serif;
}
    h2.ppb_title {
    font-size: 36px;
    text-transform: none;
    }
    h2.ppb_title {
        font-size: 50px;
        margin-top: 0;
    }
    #page_caption h1, .ppb_title, .post_caption h1, .page_tagline {
        text-align: left;
    }
    h1, h2, h3, h4, h5, h6, h7 {
        color: #222;
        font-family: 'Poppins', 'Helvetica Neue', Arial,Verdana,sans-serif;
        font-weight: 400;
    }
    .page_tagline {
    font-weight: 500;
    }
    .page_tagline, .post_detail, .thumb_content span, .portfolio_desc .portfolio_excerpt, .testimonial_customer_position, .testimonial_customer_company {
        font-size: 15px;
    }
    .page_tagline, .thumb_content span, .portfolio_desc .portfolio_excerpt, .testimonial_customer_position, .testimonial_customer_company, .post_detail.single_post, #gallery_caption .tg_caption .tg_desc {
        color: #000000;
    }
    #page_caption h1, .ppb_title, .post_caption h1, .page_tagline {
        text-align: left;
    }
    h1, h2, h3, h4, h5, h6, h7, .post_quote_title, label, strong[itemprop="author"], #page_content_wrapper .posts.blog li a, .page_content_wrapper .posts.blog li a, .readmore, .post_detail.single_post, .page_tagline, #gallery_caption .tg_caption .tg_desc, #filter_selected, #autocomplete li strong, .post_detail.single_post a, .post_detail.single_post a:hover, .post_detail.single_post a:active, blockquote, .sidebar_widget li.widget_products, #copyright, #footer_menu li a, #footer ul.sidebar_widget li ul.posts.blog li a, .woocommerce-page table.cart th, table.shop_table thead tr th, .woocommerce-page div.product .woocommerce-tabs ul.tabs li a, .woocommerce ul.products li.product .price {
        font-family: Poppins, Helvetica, Arial, sans-serif;
    }
    .event-container .event {
    box-shadow: 0 4px 20px 0px rgb(255 255 255 / 89%);
    display: flex;
    border-radius: 8px;
    margin: 32px 0;
    background-image: url(images/back.jpg);
    }    

    #scroll-container {
  
  border-radius: 5px;
  height: 50%;
  overflow: hidden;
}

#scroll-text {
  height: 100%;
  
  
  /* animation properties */
  -moz-transform: translateY(100%);
  -webkit-transform: translateY(100%);
  transform: translateY(100%);
  
  -moz-animation: my-animation 15s linear infinite;
  -webkit-animation: my-animation 15s linear infinite;
  animation: my-animation 15s linear infinite;
}

/* for Firefox */
@-moz-keyframes my-animation {
  from { -moz-transform: translateY(100%); }
  to { -moz-transform: translateY(-100%); }
}

/* for Chrome */
@-webkit-keyframes my-animation {
  from { -webkit-transform: translateY(100%); }
  to { -webkit-transform: translateY(-100%); }
}

@keyframes my-animation {
  from {
    -moz-transform: translateY(100%);
    -webkit-transform: translateY(100%);
    transform: translateY(100%);
  }
  to {
    -moz-transform: translateY(-100%);
    -webkit-transform: translateY(-100%);
    transform: translateY(-100%);
  }
}
    </style>  
   
  </head>
  <body style="background-image: url(images/mcc-digtalsign-5.png); ">
  <div style="margin:auto;width:100%">
                    <h2 class="ppb_title" style="text-align:center; color:white;margin-bottom: 0px; margin-top: 50px;">MCC SCHEDULE EVENT TODAY</h2>
                    <div class="ppb_title" style="text-align:center; color:white;margin-bottom: 0px; margin-top: 10px;"><marquee>Sekarang Anda Berada Di LANTAI 6</marquee></div>
            </div>
    <div class="event-container" >
    <h3 class="year" style="color:white;margin-bottom: 10px; margin-top: 10px;"><?php echo tanggal_indonesia(date('Y-m-d')); ?></h3>
    <div id="scroll-container">
    <?php
      /*$ambildata=mysqli_query($conn,"SELECT * FROM event where `tanggal_pelaksanaan`= curdate() ORDER BY tanggal_pelaksanaan and pukul ASC")or die(mysqli_error($koneksi));*/
      $ambildata=mysqli_query($conn,"SELECT * FROM event1 where `tanggal_pelaksanaan`= curdate() ORDER BY tanggal_pelaksanaan and durasi_kegiatan ASC")or die(mysqli_error($koneksi));
      $jumlah=mysqli_num_rows($ambildata);                                
        while($a = mysqli_fetch_assoc($ambildata))
          {
    ?>
    <div class="event" id="scroll-text">
        <div class="event-left">
          <div class="event-date">
            <div class="date"><?php echo date('d', strtotime($a["tanggal_pelaksanaan"])); ?></div>
            <div class="month"><?php echo tanggal_indonesia1(date($a["tanggal_pelaksanaan"])); ?></div>
          </div>
        </div>

        <div class="event-right">
          <h3 style="color: #00000;font-size: 30px;margin-bottom: 0px; margin-top: 10px;"><b><?php echo $a['nama_organisasi']; ?></b></h3>
          <div class="event-description">
          <p style="margin-bottom: 0px; margin-top: 0px; font-size: 20px; color: #082174; font-family: Poppins, Helvetica, Arial, sans-serif;"><b><?php echo $a['judul_kegiatan'];?></b></p>
          <b><?php echo $a['lokasi_ruangan'];?></b>
          </div>

          <div class="event-timing">
            <img src="images/time.png" alt="" /><b> <?php echo $a['durasi_kegiatan']; ?></b>
          </div>
        </div>
      </div>
      <?php
        }
      ?>                                    
      
    </div>
      </div>
    
  </body>
</html>
