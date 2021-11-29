<?php

class Post
{
    // Databse connection
    private $conn;
    private $table = 'posts';

    // Post properties
    public $id;
    public $category_id;
    public $category_name;
    public $title;
    public $content;
    public $author;
    public $published_at;

    // Constructor
    public function __construct($db)
    {
        $this->conn = $db;
    }

    // Get posts
    public function read()
    {
        // Query the data
        $query = 'SELECT
        c.name as category_name,
        p.id,
        p.category_id,
        p.title,
        p.content,
        p.author,
        p.published_at FROM '  . $this->table .  ' p LEFT JOIN categories c ON p.category_id = c.id ORDER BY p.published_at DESC';

        // Prepared statement
        $stmt = $this->conn->prepare($query);

        // Execute Query
        $stmt->execute();

        return $stmt;
    }
}
