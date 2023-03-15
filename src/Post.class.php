<?php
class Post {
    private int $id;
    private string $filename;
    private string $timestamp;
    private string $title;  //usun jak niedziala

    function __construct(int $i, string $f, string $t, string $ti) {
        $this->id = $i;
        $this->filename = $f;
        $this->timestamp = $t;
        $this->title = $ti;  //usun jak niedziala
    }

    public function getFilename() : string {
        return $this->filename;
    }

    public function getTimestamp() : string {
        return $this->timestamp;
    }

    public function getTitle() : string {
        return $this->title;
    }

    static function getLast() : Post {
        global $db;
        $query = $db->prepare("SELECT * FROM post ORDER BY timestamp DESC LIMIT 1");
        $query->execute();
        $result = $query->get_result();
        $row = $result->fetch_assoc();
        $p = new Post($row['id'], $row['filename'], $row['timestamp'], $row['title']);
        return $p;
    }

    static function getPage(int $pageNumber = 1, int $postsPerPage = 10) : array {
        global $db;
        $query = $db->prepare("SELECT * FROM post ORDER BY timestamp DESC LIMIT ? OFFSET ?");
        $offset = ($pageNumber-1)*$postsPerPage;
        $query->bind_param('ii', $postsPerPage, $offset);
        $query->execute();
        $result = $query->get_result();
        $postsArray = array();
        while($row = $result->fetch_assoc()) 
        {
            $post = new Post($row['id'], $row['filename'], $row['timestamp'], $row['title']);
            array_push($postsArray, $post);
        }
        return $postsArray;
    }

    static function upload(string $tempFileName) {
        $targetDir = "img/";
        $imgInfo = getimagesize($tempFileName);
        if (!is_array($imgInfo)) {
            die("ERROR: Przekazany plik nie jest obrazem!");
        }
        $randomNumber = rand(10000, 99999) . hrtime(true);
        $hash = hash("sha256", $randomNumber);
        $newFileName = $targetDir . $hash . ".webp";
        if (file_exists($newFileName)) 
        {
            die("ERROR: Podany plik już istnieje!!");
        }
        $imageString = file_get_contents($tempFileName);
        $gdImage = @imagecreatefromstring($imageString);
        imagewebp($gdImage, $newFileName);
        global $db;
        $query = $db->prepare("INSERT INTO post VALUES(NULL, ?, ?, ?)");
        $dbTimestamp = date("Y-m-d H:i:s");
        $titleName = $_POST["memeTitle"];
        $query->bind_param("sss", $dbTimestamp, $newFileName, $titleName);
            if(!$query->execute())
                die("Błąd zapisu do bazy danych");
    }
}

?>