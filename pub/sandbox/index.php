<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post" enctype="multipart/form-data">
        <label for="uploadedFileInput">
            Wybierz plik do wgrania na serwer:
        </label><br>
        <input type="file" name="uploadedFile" id="uploadedFileInput" required><br>
        <input type="submit" value="Wyślij plik" name="submit"><br>
    </form>

    <?php
    if(isset($_POST['submit']))
    {
        //echo "<pre>";
        //var_dump($_FILES);
        $targetDir = "img/";

        $sourceFileName = $_FILES['uploadedFile']['name'];

        $tempURL = $_FILES['uploadedFile']['tmp_name'];

        $imgInfo = getimagesize($tempURL);
        if (!is_array($imgInfo)) {
            die("ERROR: Przekazany plik nie jest obrazem!");
        }

        //$sourceFileExtension = pathinfo($sourceFileName, PATHINFO_EXTENSION);

        //$sourceFileExtension = strtolower($sourceFileExtension);

        $hash = hash("sha256", $sourceFileName . hrtime(true) ); 
        $newFileName = $hash . ".webp";
        
        $imageString = file_get_contents($tempURL);

        $gdImage = @imagecreatefromstring($imageString);

        $targetURL = $targetDir . $newFileName;

        //$targetURL = $targetDir . $sourceFileName;

        if (file_exists($targetURL)) 
        {
            die("ERROR: Podany plik już istnieje!!");
        }

        //move_uploaded_file($tempURL, $targetURL);

        imagewebp($gdImage, $targetURL);

        $db = new mysqli('localhost', 'root', '', 'cmse');
        $query = $db->prepare("INSERT INTO post VALUES(NULL, ?, ?)");
        $dbTimestamp = date("Y-m-d H:i:s");
        $query->bind_param("ss", $dbTimestamp, $hash);
        if(!$query->execute())
            die("Błąd zapisu do bazy danych");

        echo "Plik został poprawnie wgrany na serwer";
    }
    ?>
</body>
</html>