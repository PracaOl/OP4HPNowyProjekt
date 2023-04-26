<?php
class Vote {
    private int $postId;
    private int $userId;

    function __construct() {
        $this->postId;
        global $db;
        $this->userId;
    }

    public function getPostId() : int {
        return $this->postId;
    }
    public function getUserId() : string {
        return $this->userId;
    }

    public static function plus(int $postId, int $userId) : bool {
        global $db;
        //if (isset($_POST['plus'])) {
        $query = $db->prepare("INSERT INTO vote VALUES(NULL, 1, ?, ?)");
        $query->bind_param("ii", $postId, $userId);
        if($query->execute())
            return true;
        return false;
        //}
    }
    public static function minus(int $postId, int $userId) : bool {
        global $db;
        //if (isset($_POST['minus'])) {
        $query = $db->prepare("INSERT INTO vote VALUES(NULL, -1, ?, ?)");
        $query->bind_param("ii", $postId, $userId);
        if($query->execute())
            return true;
        return false;
        //}
    }
    public static function getScore(int $postId) : int {
        global $db;
        $query = $db->prepare("SELECT SUM(value) FROM vote WHERE post_id = ?");
        $query->bind_param('i', $postId);
        if($query->execute()){
            $result = $query->get_result();
            $score = $result->fetch_row()[0];
            return $score;
        }
        return 0;
    }
    public static function getVote(int $postId, int $userId) : int {
        global $db;
        $query = $db->prepare("SELECT value FROM vote WHERE post_id = ? AND user_id = ?");
        $query->bind_param('ii', $postId, $userId);
        if($query->execute()) {
            $vote = $query->get_result()->fetch_row()[0];
            return $vote;
        }
        return 0;
    }



}



?>