<div class="form-group member-error-failed">
	<span id="pass-error" class="pas-err pass-msg-err custom_error"></span>
	<span id="pass-success" class="pas-succ pass-msg-err "></span>
</div>
<?php if($this->session->userdata('redirect-error')!= '' || $this->session->userdata('redirect-success') !=''){?>
	<div class="err-thr session-error-msg-failed-success">
		<?php if($this->session->userdata('redirect-error') !=''){?>
	    	<label class="control-label" for="pass-error"><span id="pass-error" class="pas-err session-error-msg-failed custom_error new_concept"><?php echo $this->session->userdata('redirect-error'); ?></span></label>
	    <?php }else if($this->session->userdata('redirect-success')){ ?>
	    	<label class="control-label" for="pass-error"><span id="pass-error" class="pas-succ session-error-msg-success custom_success"><?php echo $this->session->userdata('redirect-success'); ?></span></label>
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