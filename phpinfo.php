<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<?php
phpinfo();

$system = new Java('java.lang.System');

// demonstrate property access
echo 'Java version=' . $system->getProperty('java.version') . '<br />';
echo 'Java vendor=' . $system->getProperty('java.vendor') . '<br />';
echo 'OS=' . $system->getProperty('os.name') . ' ' .
             $system->getProperty('os.version') . ' on ' .
             $system->getProperty('os.arch') . ' <br />';

// java.util.Date example
$formatter = new Java('java.text.SimpleDateFormat',
                      "EEEE, MMMM dd, yyyy 'at' h:mm:ss a zzzz");

echo $formatter->format(new Java('java.util.Date'));

?>
</body>
</html>
