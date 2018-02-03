<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
	<link rel = "stylesheet" type = "text/css" 
   href = "<?php echo base_url("/web/css/style.css"); ?>">
</head>
<body>
<?php echo $this->session->flashdata('feedback'); ?>
<form action="<?php echo base_url('test/add')?>" method="post">
    <input type="text" name="name">
    <input type="password" name="password">
    <button type="submit"> Submit </button>
</form>


</body>
</html>