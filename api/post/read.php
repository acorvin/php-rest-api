<?php
// display all errors
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Headers
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

include_once '../../config/Database.php';
include_once '../../models/Post.php';

// Instantiate and Connect to Database
$databse = new Database();
$db = $databse->connect();

// Instantiate Blog Post object
$post = new Post($db);

// Blog post query
$result = $post->read();

// Get row count
$num = $result->rowCount();

// Check for posts
if ($num > 0) {
    $posts_arr = array();
    $posts_arr['data'] = array();

    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        extract($row);

        $post_item = array(
            'id' => $id,
            'title' => $title,
            'content' => html_entity_decode($content),
            'author' => $author,
            'category_id' => $category_id,
            'category_name' => $category_name,
        );

        // Push to data
        array_push($posts_arr['data'], $post_item);
    }

    // Turn into JSON object and output
    echo json_encode($posts_arr);
} else {
    echo json_encode(
        array('message' => 'No posts to display.')
    );
}
