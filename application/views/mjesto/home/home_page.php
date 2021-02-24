  <?php $this->load->view('mjesto/templates/header'); ?>
  <div class="panel-header" id="msg_show">
    <?php $this->load->view('mjesto/templates/error_templates'); ?>
  </div>
  <section id="menu">
    <nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
          </ul>
        </div>
      </div>
    </nav>
  </section>
  <section class="banner-sect">
    <div class="banner-sliders">
      <div class="banner-parts">


        <div class="arran-widths">
          <div class="bg">
            <div class="input-group">
              <form id="search-form" method="GET" action="<?php echo base_url('search-result'); ?>">
        				<div class="enq-form2">
                  <input type="text" class="form-control searchtext" id="search-product" name="product" placeholder="Search term..." style="border-left:1px solid #ccc;">
        				</div>
        				<div class="enq-form3">
                 <span class="input-group-btn">
                    <button class="btn btn-default searchtext2" id="home-search-btn" type="button">Search</button>
                  </span>
        				</div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>    