<?php
/**
 * Created by JetBrains PhpStorm.
 * User: FredRSF
 * Date: 21.09.11
 * Time: 21:21
 */
?>
<script type="text/javascript">
	function Validation()
	{
		if($("#login").val() == '')
		{
			$("#msg_login").html("Введите логин.");
			return false;
		}
		
		if($("#password").val() == '')
		{
			$("#msg_password").html("Введите пароль.");
			return false;
		}
	}
</script>
<form method="post">
<div class="authorization">
	<h4 align="center">Введите логин и пароль для входа на сайт.</h4>
	<table border="0" cellpadding="" cellspacing="10">
    <tr>
		<td><b>Логин:</b></td>
		<td width="260"><input type="text" id="login" name="login" value="<?php echo $login; ?>" /><span id="msg_login" class="msg_log"></span></td>
	</tr>
    <tr>
		<td><b>Пароль:</b></td>
		<td width="260"><input type="password" id="password" name="password" /><span id="msg_password" class="msg_log"></span></td>
	</tr>
    <tr>
		<td colspan="2"><input type="checkbox" name="remember" /> запомнить меня</td>
	</tr>
    <tr>
		<td colspan="2" align="right"><input type="submit" value="Войти" onclick="return Validation();" /></td>
	</tr>
	</table>
</div>
</form>