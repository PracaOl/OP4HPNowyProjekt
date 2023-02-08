<!DOCTYPE html>
<html lang="en">
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

        $sourceFileExtension = pathinfo($sourceFileName, PATHINFO_EXTENSION);

        $sourceFileExtension = strtolower($sourceFileExtension);

        $newFileName = hash("sha256", $sourceFileName) . hrtime(true) . "." . $sourceFileExtension;

        $targetURL = $targetDir . $newFileName;

        $tempURL = $_FILES['uploadedFile']['tmp_name'];

        $imgInfo = getimagesize($tempURL);
        if (!is_array($imgInfo)) {
            die("ERROR: Przekazany plik nie jest obrazem!");
        }

        //$targetURL = $targetDir . $sourceFileName;

        if (file_exists($targetURL)) 
        {
            die("ERROR: Podany plik już istnieje!!");
        }

        move_uploaded_file($tempURL, $targetURL);
        echo "Plik został poprawnie wgrany na serwer";
    }
    ?>
</body>
</html>