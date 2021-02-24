<div class="err-thr common-admin-error-message">
	<label class="control-label" for="pass-error"><span id="pass-error" class="pas-err common-pass-error session-error-msg-failed"></span></label>
</div>
<?php if($this->session->userdata('redirect-error')!= '' || $this->session->userdata('redirect-success') !=''){?>
	<div class="err-thr session-error-msg-failed-success">
		<?php if($this->session->userdata('redirect-error') !=''){?>
	    	<label class="control-label" for="pass-error"><span id="pass-error" class="pas-err session-error-msg-failed"><?php echo $this->session->userdata('redirect-error'); ?></span></label>
	    <?php }else if($this->session->userdata('redirect-success')){ ?>
	    	<label class="control-label" for="pass-error"><span id="pass-error" class="pas-succ session-error-msg-success"><?php echo $this->session->userdata('redirect-success'); ?></span></label>
	    <?php } ?>
	</div>
<?php } ?>
<script type="text/javascript">
	$(document).ready(function(){
		<?php if($this->session->userdata('redirect-error') !=''){ unset($_SESSION['redirect-error']);?>
			$('.session-error-msg-failed-success').css('display','block');
    		setTimeout(function(){
				$('.session-error-msg-failed-success').css('display','none');
			}, 2500);
		<?php  }else if($this->session->userdata('redirect-success') !=''){ unset($_SESSION['redirect-success']); ?>
			$('.session-error-msg-failed-success').css('display','block');
			setTimeout(function(){
				$('.session-error-msg-failed-success').css('display','none');
			}, 2000);
		<?php  } ?>
	});
</script>